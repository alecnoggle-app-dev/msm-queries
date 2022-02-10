class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb" })
  end

  def actor_details

    @id = params.fetch("id")
    @the_actor = Actor.where({ :id => @id }).at(0)

    @filmography = Character.where({ :actor_id => @id })

    render({ :template => "actor_templates/details.html.erb" })
  end

end