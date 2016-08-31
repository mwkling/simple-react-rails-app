Favoritable = React.createClass
  toggleFavorite: ->
    @props.toggleFavorite(@props.text)

  render: ->
    starClass =
      if @props.text in @props.favorites
        "fa fa-star"
      else
        "fa fa-star-o"
    <td>
      <i className={starClass} onClick={@toggleFavorite}/>
      {@props.text}
    </td>

Job = React.createClass
  render: ->
    <tr>
      <Favoritable text={@props.job_title} toggleFavorite={@props.toggleFavorite} favorites={@props.favorites} />
      <Favoritable text={@props.company_name} toggleFavorite={@props.toggleFavorite} favorites={@props.favorites} />
      <Favoritable text={@props.city} toggleFavorite={@props.toggleFavorite} favorites={@props.favorites} />
    </tr>

Sidebar = React.createClass
  render: ->
    favorites = @props.favorites.map (text) ->
      <tr><td>{text}</td></tr>

    <div className="right">
      <h1>Favorites</h1>
      <table>
        {favorites}
      </table>
    </div>

JobHeader = React.createClass
  render: ->
    <tr>
      <th>Job Title</th>
      <th>Company</th>
      <th>City</th>
    </tr>

@JobsList = React.createClass
  getInitialState: ->
    favorites: []

  toggleFavorite: (text) ->
    newFavorites = @state.favorites.slice()
    if text in newFavorites
      newFavorites.splice(newFavorites.indexOf(text), 1)
    else
      newFavorites.push(text)
    @setState
      favorites: newFavorites

  render: ->
    jobs = @props.jobs.map ((job) ->
            <Job job_title={job.job_title}
                 company_name={job.company_name}
                 city={job.city}
                 toggleFavorite={@toggleFavorite}
                 favorites={@state.favorites} />
    ).bind(@)


    <div>
      <div className="left">
        <h1>{@props.title}</h1>
        <table>
          <JobHeader />
          {jobs}
        </table>
      </div>
      <Sidebar favorites={@state.favorites} />
    </div>
