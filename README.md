##Photo Gallery Readme
This is a simple frontend photo gallery that communicates with Tandem Vault's API.

###How to Run/Install
1. clone this repository and run the index.html with your favorite browser
2. or visit the deployed site at https://photo-gallery-cbfb0.firebaseapp.com

###Features
1. Grid rendering of images
2. Load assets as you scroll
3. Search query
4. Sort images by: curated at, created at, rating, or filename
5. filter images by: portrait or landscape

###Next Steps
1. Would be more complete if there were tests.
2. I had some issues implementing filtering by `people` and `sublicensable`. Error message didn't quite make sense to me as it looks like I have the correct param and value: so when i send `URL/api/v1/assets?api_key=mykey&people=true` I get a response back that says `{"error":{"param":"people","value":"true","error":"Must be one of: true, false."}}`
3. Add more bells and whistles. Implement a lightbox and perhaps show more data, stuff like file name, creation date, etc.
4. Play with Milk to see how that differs from using mustache direct, and/or get more familiar with mustache.

###What was used to build this
1. coffee-script 1.10.0 on node.js 6.2.0
2. jquery 1.11.3
3. mustache 2.2.1
4. bootstrap 3.3.6
5. sublime text 2 for editor
6. safari and chrome for test
