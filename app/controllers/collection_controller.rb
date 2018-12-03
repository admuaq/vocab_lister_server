require 'byebug'

class CollectionController < ApplicationController
  def index 
    @collections = Collection.all
    render json: @collections
  end

  def show 
    @collection = Collection.find_by!(name: params[:name])
    render json: @collection
  end

  def update
    # byebug 
    @collection = Collection.find_by!(name: params[:oldName])

    if params[:newName] === ''
      render json: @collection
    else 
      @collection.name = params[:newName]
      @collection.save
      render json: @collection
    end
  end

  def create
    @newCollection = Collection.new({name: params[:name], cards: []})

    if @newCollection.save
      redirect_to action: "index"
    else 
      render json: @newCollection.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @collection = Collection.find_by!(name: params[:collection])
    @collection.cards.delete(Card.find(params[:key]))
    # byebug
    render json: @collection
  end

end
