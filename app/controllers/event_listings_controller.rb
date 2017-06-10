class EventListingsController < ApplicationController
  def index
    @event_listings = EventListing.all

    render("event_listings/index.html.erb")
  end

  def show
    @event_listing = EventListing.find(params[:id])

    render("event_listings/show.html.erb")
  end

  def new
    @event_listing = EventListing.new

    render("event_listings/new.html.erb")
  end

  def create
    @event_listing = EventListing.new

    @event_listing.event_name = params[:event_name]
    @event_listing.event_type = params[:event_type]
    @event_listing.event_date = params[:event_date]
    @event_listing.location_id = params[:location_id]
    @event_listing.event_description = params[:event_description]
    @event_listing.creator_id = params[:creator_id]

    save_status = @event_listing.save

    if save_status == true
      redirect_to("/event_listings/#{@event_listing.id}", :notice => "Event listing created successfully.")
    else
      render("event_listings/new.html.erb")
    end
  end

  def edit
    @event_listing = EventListing.find(params[:id])

    render("event_listings/edit.html.erb")
  end

  def update
    @event_listing = EventListing.find(params[:id])

    @event_listing.event_name = params[:event_name]
    @event_listing.event_type = params[:event_type]
    @event_listing.event_date = params[:event_date]
    @event_listing.location_id = params[:location_id]
    @event_listing.event_description = params[:event_description]
    @event_listing.creator_id = params[:creator_id]

    save_status = @event_listing.save

    if save_status == true
      redirect_to("/event_listings/#{@event_listing.id}", :notice => "Event listing updated successfully.")
    else
      render("event_listings/edit.html.erb")
    end
  end

  def destroy
    @event_listing = EventListing.find(params[:id])

    @event_listing.destroy

    if URI(request.referer).path == "/event_listings/#{@event_listing.id}"
      redirect_to("/", :notice => "Event listing deleted.")
    else
      redirect_to(:back, :notice => "Event listing deleted.")
    end
  end
end
