$('#nav').on 'click', ->
  history.go(0)
  
$(document).ready -> 
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).parent().remove()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()
    (this).closest('fieldset').hide()


jQuery ->
  generators = new Bloodhound(
    datumTokenizer: (d) ->  Bloodhound.tokenizers.whitespace d.name
    queryTokenizer: Bloodhound.tokenizers.whitespace
    limit: 10
    prefetch:"/generators.json"
      
  )
  generators.initialize()
  
  models = new Bloodhound(
    datumTokenizer: (d) ->  Bloodhound.tokenizers.whitespace d.name
    queryTokenizer: Bloodhound.tokenizers.whitespace
    limit: 10
    prefetch:"/generators.json"
      
  )
  generators.initialize()

  
  $("#generator_refgenerators_ids_").tokenfield typeahead: [
    null
    {
      displayKey: "name"
      source: generators.ttAdapter()
    }
  ]
  
  $("#query_refgenerator").tokenfield typeahead: [
    null
    {
      displayKey: "name"
      source: generators.ttAdapter()
    }
  ]
  
  $("#query_generator").tokenfield typeahead: [
    null
    {
      displayKey: "name"
      source: generators.ttAdapter()
    }
    {
      displayKey: "notes"
      source: generators.ttAdapter()
    }
  ]
  
  return
