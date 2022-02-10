class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def old
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    
    render({ :template => "director_templates/old.html.erb"})
  end

  def young
    @youngest = Director.order({ :dob => :desc }).at(0)
    
    render({ :template => "director_templates/young.html.erb"})
  end

end