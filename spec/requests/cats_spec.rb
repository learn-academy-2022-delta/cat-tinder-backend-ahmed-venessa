require "rails_helper" 

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it "gets a list of cats" do
      Cat.create(
        name: 'Happy',
        age: 5,
        enjoys: 'smiling all day long',
        image: 'https://files.slack.com/files-pri/T04B40L2C-F03SESP4PS7/happy_cat.jpeg'
      )

      get '/cats'
      cat = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a cat" do
      cat_params = {
        cat: {
          name: 'newcat',
          age: 2,
          enjoys: 'Long naps on the couch, and a warm fire.',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }

      post '/cats', params: cat_params
      expect(response).to have_http_status(200)
      cat = Cat.first
      expect(cat.name).to eq 'newcat'
      expect(cat.age).to eq 2
      expect(cat.enjoys).to eq 'Long naps on the couch, and a warm fire.'
      expect(cat.image).to eq 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
    end
  end

  describe "PATCH /update" do
    it "updates a cat" do
      cat_params = {
        cat: {
          name: 'newcat',
          age: 2,
          enjoys: 'Long naps on the couch, and a warm fire.',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }

      post '/cats', params: cat_params
      cat = Cat.first
      updated_cat_params = {
        cat: {
          name: 'newcat',
          age: 3,
          enjoys: 'Long naps on the couch, and a warm fire.',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }

      patch "/cats/#{cat.id}", params: updated_cat_params
      updated_cat = Cat.find(cat.id)
      expect(response).to have_http_status(200)
      expect(updated_cat.age).to eq 3
    end
  end

  describe "DELETE /destroy" do
    it "delets a cat" do
      cat_params = {
        cat: {
          name: 'newcat',
          age: 2,
          enjoys: 'Long naps on the couch, and a warm fire.',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }
      post "/cats", params: cat_params
      cat = Cat.first
      delete "/cats/#{cat.id}"
      expect(response).to have_http_status(200)
      cats = Cat.all
      expect(cats).to be_empty
    end
  end



  describe "cannot create cat with valid attributes" do 
    it "it doesnt create a cat without a name" do
      cat_params = {
        cat: {
          # name: 'newcat',
          age: 2,
          enjoys: 'Long naps on the couch, and a warm fire.',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }
      post '/cats', params: cat_params
      expect(response).to have_http_status(422)
      cat = JSON.parse(response.body)
      expect(cat['name']).to include "can't be blank"
    end


    it "it doesnt create a cat without a age" do
      cat_params = {
        cat: {
          name: 'filly',
          enjoys: 'Long naps on the couch, and a warm fire.',
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }
      post '/cats', params: cat_params
      expect(response).to have_http_status(422)
      cat = JSON.parse(response.body)
      expect(cat['age']).to include "can't be blank"
    end


    it "it doesnt create a cat without enjoys" do
      cat_params = {
        cat: {
          name: 'filly',
          age: 2, 
          image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
        }
      }
      post '/cats', params: cat_params
      expect(response).to have_http_status(422)
      cat = JSON.parse(response.body)
      expect(cat['enjoys']).to include "can't be blank"
    end


    it "it doesnt create a cat without image" do
      cat_params = {
        cat: {
          name: 'filly',
          age: 2,
          enjoys: 'Long naps on the couch, and a warm fire.'
        }
      }
      post '/cats', params: cat_params
      expect(response).to have_http_status(422)
      cat = JSON.parse(response.body)
      expect(cat['image']).to include "can't be blank"
    end
  end
end