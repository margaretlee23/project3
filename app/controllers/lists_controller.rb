class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!




end