// import your packages here
import { fetchData, postData } from "./modules/DataMiner.js";

(() => {
    // stub * just a place for non-component-specific stuff
    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something has gone wrong, refresh the page");
    }

    function handleDataSet(data) {
        // populate a light box with this data
        // and then open it
        let lightbox = document.querySelector(".lightbox");
        }
    
    function retrieveProjectInfo(event) {
        //debugger;
        console.log(event.target.id);
        //test for an ID
        //check for an id, and if there isnt one, dont try the fetch call
        // bc itll break (the php will choke)
        //if (!this.id) { return }
        

        //fetchData(`./includes/index.php?id=${this.id}`).then(data => console.log(data)).catch(err => { console.log(err); popErrorBox(err); });

        //function retrieveProjectInfo() {
            if (!event.target.id) { return }
    
            fetchData(`./includes/index.php?id=${event.target.id}`).then(data => console.log(data)).catch(err => { console.log(err); popErrorBox(err); });
        }


    function renderPortfolioThumbnails(thumbs) {
        //debugger;
        let userSection = document.querySelector('.ftSection'),
            userTemplate = document.querySelector('#ftTemplate').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.favouriteThings').children;

            currentUserText[1].src = `images/${thumbs[user].image}`;
            currentUserText[1].id = thumbs[user].id;
            currentUserText[0].textContent = thumbs[user].title;
            currentUserText[2].textContent = thumbs[user].description;
            // add this new user to the view
            userSection.appendChild(currentUser);
        }

        userSection.addEventListener("click", retrieveProjectInfo);
    }
    
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => { console.log(err); popErrorBox(err); });
})();
