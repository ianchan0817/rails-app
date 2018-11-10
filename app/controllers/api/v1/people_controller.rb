module Api::V1
  class PeopleController < ApplicationController
    def index
      @limit = 3
      @offset = 0
      @people = Person.all.limit(@limit).offset(@offset)
      @total = @people.count
    end
  end
end
