class ConcretesController < ApplicationController
def index
 @ways=Way.all
end
end
