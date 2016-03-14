var ApiUtil = require("../util/api_util.js");
var UserStore = require("../stores/user.js");
var React = require("react");
var PicStore = require("../stores/pic.js");
var History = require("react-router").History;
var FolloweesStore = require("../stores/followees.js");
var Search = require("./search.jsx");
var NavBar = require("./nav_bar.jsx");
var UploadButton = require("./upload_button");
var cur = window.current_user_id;
var Comments = require("./comment.jsx");
var uploadFlag = false;
var errorsDiv = null;
var userUploaded = "nah";
var counter = 0;


var glamPicID =
"ccwt" + Math.floor((Math.random() * 3) + 70) + "qdnpdlrbntuccl";



var Pic = React.createClass({

  mixins: [History],

  getInitialState: function () {
    return (
      { pic: PicStore.find(parseInt(this.props.params.id)) }
    );
  },

  componentDidMount: function () {
    ApiUtil.fetchFollowees();
    this.followListener = FolloweesStore.addListener(function () {
      this.forceUpdate();
    }.bind(this));

    ApiUtil.fetchSinglePic(this.props.params.id);
    this.listener = PicStore.addListener(function () {
      this.setState( { pic: PicStore.find(parseInt(this.props.params.id)) } );
    }.bind(this));
  },

  componentWillUnmount: function () {
    this.followListener.remove();
    this.listener.remove();
  },

  componentWillReceiveProps: function (newProps) {
    ApiUtil.fetchSinglePic(parseInt(newProps.params.id));
  },

  handleUserClick: function () {
    this.history.pushState( null, "album", {id: this.state.pic.user_id} );
  },

  handleFollowClick: function (id, followStatus) {
    if (followStatus === "follow") {
      ApiUtil.followUser(id);
    } else {
      ApiUtil.unfollowUser(id);
    }
  },

  handleLikeClick: function (likeStatus, id) {
    if (likeStatus === false) {
      ApiUtil.createLike(id);
    } else {
      ApiUtil.deleteLike(id);
    }
  },

  handleDeleteClick: function () {
    ApiUtil.deletePic(this.state.pic.id);
    this.history.pushState( null, "/");
  },

  render: function () {
    if (!this.state.pic) {
      return (<div></div>);
    }


    if (this.state.pic.user_id !== cur) {
      if (FolloweesStore.find(parseInt(this.state.pic.user_id))) {
        var followStatus = <div className="cursor show_unfollow"
                                key={1111}
                                onClick={this.handleFollowClick.bind(
                                   null,
                                   this.state.pic.user_id,
                                   "unfollow")}>
                             unfollow
                           </div>;
      } else {
            followStatus = <div className="cursor show_follow"
                                key={1111}
                                onClick={this.handleFollowClick.bind(
                                   null,
                                   this.state.pic.user_id,
                                   "follow")}>
                             follow
                           </div>;
      }
    }
    if (this.state.pic.user_id === cur) {
      var deleteStatus = <div
                          onClick={this.handleDeleteClick}
                          className="cursor">
                            delete
                          </div>;
    } else {
          deleteStatus = "";
    }
    if (this.state.pic.already_liked === true) {
      var likeStatus = <div className="cursor show_unlike_button"
                           onClick={this.handleLikeClick.bind(
                           null,
                           this.state.pic.already_liked,
                           this.state.pic.id)}>
                              ★
                       </div>;
    } else {
          likeStatus = <div className="cursor show_like_button"
                           onClick={this.handleLikeClick.bind(
                           null,
                           this.state.pic.already_liked,
                           this.state.pic.id)}>
                              ★
                       </div>;
    }
    if (this.state.pic.likes_count > 0) {
      var likeCount = this.state.pic.likes_count;
    } else {
          likeCount = " ";
    }

    console.log(counter);
    counter ++;

    if (this.state.pic.id < 82) {
      errorsDiv = null;
      userUploaded = "nah";
    }

    if (this.state.pic.id > 82 && uploadFlag === false && this.state.pic.public_id) {

      uploadFlag = true;

      var unworthyPicId = this.props.params.id
      console.log(this.state.pic.public_id);
      console.log(this.state.pic.id);
      if (this.state.pic.public_id !== "ccwt70qdnpdlrbntuccl" &&
          this.state.pic.public_id !== "ccwt71qdnpdlrbntuccl" &&
          this.state.pic.public_id !== "ccwt72qdnpdlrbntuccl"){

        errorsDiv = <div id="insufficientGlamourMessage">
          Sorry, that photo is insufficently glamorous.
          Please enjoy this replacement.
        </div>;
        userUploaded ="sneaky";

        setTimeout(function(){
          ApiUtil.createPic(
            function(){},
            glamPicID
          );
        }, 3000);

        setTimeout(function(){
          ApiUtil.deletePic(
            unworthyPicId
          );
        }, 3000);


      }
    }


    return (
      <center>
        <NavBar></NavBar>
        <p>.</p>
        {errorsDiv}

        <div key={ this.state.pic.id }
             className="show_pic_title_info">
          <div className="show_pic_username cursor"
               key={ this.state.pic.id }
               onClick={this.handleUserClick}
               div>
                { this.state.pic.username }
          </div>
          <div className="show_follow">
              { followStatus }
          </div>
        </div>
        <div className="show_pic_width">
            <img src={"http://res.cloudinary.com/instaglam/image/upload/s-" +
                      "-cdzgeeOu--/c_fill,g_center,h_550,q_91,w_550/" +
                      this.state.pic.public_id + ".jpg"
                 }
                 className="show_pic_display">
            </img>
            <img src={"http://res.cloudinary.com/instaglam/image/upload/s-" +
                      "-cdzgeeOu--/c_fill,g_center,h_550,q_91,w_550/" +
                      glamPicID + ".jpg"
                 }
                 className="show_pic_sneaky" id={userUploaded}>
            </img>
            <div className="show_pic_info">
              <div className="album_like_div">
                { likeStatus }
              </div>
              <div className="show_like_count">
                { likeCount }
              </div>
              <div className="pic_when">
                { this.state.pic.created_at }
              </div>
              <div className="show_pic_delete delete_x">
                { deleteStatus }
              </div>
            </div>
            <div className="show_pic_comments">
              <Comments pic={this.state.pic}
                        className="album_like_div"></Comments>
            </div>
        </div>
      </center>
    );
  }
});

module.exports = Pic;
