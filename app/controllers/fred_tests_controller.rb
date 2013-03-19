class FredTestsController < ApplicationController
  # GET /fred_tests
  # GET /fred_tests.json
  def index
    @fred_tests = FredTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fred_tests }
    end
  end

  # GET /fred_tests/1
  # GET /fred_tests/1.json
  def show
    @fred_test = FredTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fred_test }
    end
  end

  # GET /fred_tests/new
  # GET /fred_tests/new.json
  def new
    @fred_test = FredTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fred_test }
    end
  end

  # GET /fred_tests/1/edit
  def edit
    @fred_test = FredTest.find(params[:id])
  end

  # POST /fred_tests
  # POST /fred_tests.json
  def create
    @fred_test = FredTest.new(params[:fred_test])

    respond_to do |format|
      if @fred_test.save
        format.html { redirect_to @fred_test, notice: 'Fred test was successfully created.' }
        format.json { render json: @fred_test, status: :created, location: @fred_test }
      else
        format.html { render action: "new" }
        format.json { render json: @fred_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fred_tests/1
  # PUT /fred_tests/1.json
  def update
    @fred_test = FredTest.find(params[:id])

    respond_to do |format|
      if @fred_test.update_attributes(params[:fred_test])
        format.html { redirect_to @fred_test, notice: 'Fred test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fred_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fred_tests/1
  # DELETE /fred_tests/1.json
  def destroy
    @fred_test = FredTest.find(params[:id])
    @fred_test.destroy

    respond_to do |format|
      format.html { redirect_to fred_tests_url }
      format.json { head :no_content }
    end
  end
end
