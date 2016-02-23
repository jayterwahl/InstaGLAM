# Flux Stores

### PicStore

Holds all persisted Pic data.

##### Actions:
- `receiveAllPics`
- `receiveSinglePic`
- `removePic`

##### Listeners:
- `PicsIndex` (passes to `PicIndexItem` via props)
- `PicDetail`

### PicFormStore

Holds un-persisted Pic data to send to the API.

##### Actions:
- `receivePicFormParams`

##### Listeners:
- `PicForm`

### SearchStore

Holds search parameters to send to the API.

##### Actions:
- `receiveSearchParams`

##### Listeners:
- `SearchIndex`

### SearchSuggestionStore

Holds typeahead suggestions for search.

##### Actions:
- `receiveSearchSuggestions`

##### Listeners:
- `SearchSuggestions`
