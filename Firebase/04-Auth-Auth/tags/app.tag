<app>
	<h1 class="page-header">
		Authentication and Authorization
		<button if={ !user } class="btn btn-success pull-right" onclick={ logIn }>LOGIN</button>
		<button if={ user } class="btn btn-danger pull-right" onclick={ logOut }>LOGOUT</button>
	</h1>

	<home if={ !user }></home>
	<members if={ user }></members>

	<script>
		var that = this;
<<<<<<< HEAD
		// this.user = user; // Comes from the global user.
=======

		// firebase.auth().currentUser will always reflect the current
		// authenticated user state. Gives a user object if logged in.
		// Gives null if logged out.
		this.user = firebase.auth().currentUser;
>>>>>>> jmk2142/master

		/* --------------------------------------------------
			AUTHENTICATION -> firebase.auth()
			1) onAuthStateChanged()
			2) signInWithPopup()
			3) signOut()

			ATOMIC WRITES
			1) ref.update(updateObject)
			2) See data architecture implications

			AUTHORIZATION
			1) Rules and cascades
			2) Keywords
				- auth
				- $something
				- data
				- newData
		-------------------------------------------------- */


		// AUTHENTICATION LISTENER
		// Once we code this, we have a "live" listener that is constantly listening for whether the user is logged in or not. It will fire the callback if it "hears" a login, or logout.
		firebase.auth().onAuthStateChanged(function(userObj) {
<<<<<<< HEAD
			if (userObj) {
				// User is signed in.
				that.user = userObj;
				user = that.user; // set global user
				console.log(user);
			} else {
				// User is not signed in.
				that.user = null;
				console.log(user);
			}
=======
			that.user = firebase.auth().currentUser;
>>>>>>> jmk2142/master
			that.update();
		});

		logIn(event) {
			// Specify that you want to sign up with Google authentication
			var provider = new firebase.auth.GoogleAuthProvider();

			// Popover signup is probably the most simple and trusted.
<<<<<<< HEAD
			firebase.auth().signInWithPopup(provider).then(function (result) {

				// Setting it to global user for convenience.
				user = result.user;
				console.log("result: ", result);

			}).catch(function (error) {
				// Handle Errors here.
				console.log('Error:', error.code, error.message);
				console.log('Email of account used:', error.email);
				console.log('Credential type used:', error.credential);
			});
=======
			firebase.auth().signInWithPopup(provider);
>>>>>>> jmk2142/master
		}

		logOut(event) {
			firebase.auth().signOut();
		}

	</script>

	<style>
		:scope {
			display: block;
		}
	</style>
</app>
