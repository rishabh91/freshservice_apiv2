
class Tickets < FreshserviceApiv2

  TICKET_ENDPOINT = "/api/v2/tickets"
  TICKET_FIELDS = "/api/v2/ticket_fields"
  TICKET_CONVERSATIONS = "/api/v2/conversations"

  def initialize(uri)
    super()
  end

  def create_ticket(data)
    response = post(TICKET_ENDPOINT,data.to_json)
  end

  def view_ticket(id)
    response = get(TICKET_ENDPOINT + "/#{id}")
  end

  def view_all_ticket_fields
    response = get(TICKET_FIELDS)
  end

  def delete_ticket(id)
    response = delete(TICKET_ENDPOINT + "/#{id}")
  end

  def update_ticket(id,data)
    response = update(TICKET_ENDPOINT + "/#{id}", data.to_json)
  end

  def add_note(id,data)
    response = post(TICKET_ENDPOINT + "/#{id}/notes", data.to_json)
  end

  def add_reply(id,data)
    response = post(TICKET_ENDPOINT + "/#{id}/reply", data.to_json)
  end
end
