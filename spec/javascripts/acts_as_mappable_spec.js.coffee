describe "ActsAsMappable", ->

  beforeEach ->
    div = document.createElement("div")
    div.id = "map-canvas"
    div.setAttribute("data-lat", 15)
    div.setAttribute("data-lng", 30)
    div.setAttribute("title", "hoge")
    document.body.appendChild(div)
    actsAsMappable.initToMap()

  describe "Map object", ->

    map = undefined

    beforeEach ->
      map = actsAsMappable.map

    it "div", ->
      expect(map.getDiv()).toEqual($("#map-canvas")[0])

    it "lat", ->
      expect(map.getCenter().lat()).toEqual(15)

    it "lng", ->
      expect(map.getCenter().lng()).toEqual(30)

    it "zoom", ->
      expect(map.getZoom()).toEqual(12)

  describe "Marker object", ->

    marker = undefined

    beforeEach ->
      marker = actsAsMappable.marker

    it "map", ->
      expect(marker.getMap()).toEqual(actsAsMappable.map)

    it "lat", ->
      expect(marker.getPosition().lat()).toEqual(15)

    it "lng", ->
      expect(marker.getPosition().lng()).toEqual(30)

    it "title", ->
      expect(marker.getTitle()).toEqual("hoge")
