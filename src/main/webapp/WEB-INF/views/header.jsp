<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>News</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/> 
   	<style type="text/css">
   		.sidebar,
		.overlay {
		  position: fixed;
		  top: 0;
		  bottom: 0;       
		}
		
		.sidebar {
		  left: -100%;
		  max-width: 300px;
		  transition: all ease 0.25s;
		  overflow-y: auto;
		  z-index: 1032;
		}
		.overlay {
		  left: 0;
		  right: 0;
		  height: 100%;
		  width: 100%;
		  background-color: rgba(0, 0, 0, 0.75);
		  visibility: hidden;
		  z-index: 1031;
		}
		
		.main-navigation.active .sidebar {
		  left: 0;
		}
		
		.main-navigation.active .overlay {
		  visibility: visible;
		}
		
		@media (min-width: 992px) {
		  .sidebar {
		    position: relative;
		    top: auto;
		    bottom: auto;
		    left: auto;
		    flex-direction: row;
		    max-width: 100%;
		    transform: none;
		    transition: none;
		    overflow-y: visible;
		    z-index: auto;
		  }
		}
		
		.main-heading {
		  position: relative;
		  z-index: 100;
		}
   		
   	</style>
  </head>
  <body class="pt-5">
    <!-- navbar -->
    <nav
      class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top main-navigation"
    >
      <div class="container-fluid">
        <a
          class="navbar-brand order-2 order-lg-1 mr-auto mr-lg-3 ml-3 ml-lg-0"
          href="/index/"
          >WorldNews</a
        >
        <button class="navbar-toggler" type="button">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="overlay d-flex d-lg-none"></div>

        <div class="order-lg-2 bg-dark d-lg-flex w-100 sidebar pb-3 pb-lg-0">
          <ul class="navbar-nav mr-lg-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a
                class="nav-link px-3 px-lg-2 active"
                aria-current="page"
                href="#"
                >Home</a
              >
            </li>
            <sec:authorize access="!isAuthenticated()">
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="/user/login">Login</a>
            </li>
             <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="/user/register">Register</a>
            </li>
            </sec:authorize>
            
            <sec:authorize access="isAuthenticated()">
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="/user/logout">Logout</a>
            </li>
            </sec:authorize>
            
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="/user/recordPage">RecordPage</a>
            </li>
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="/worldnews/upload">AddPhoto</a>
            </li>
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="/worldnews">Photo</a>
            </li>
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="#">Link</a>
            </li>
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="#">Link</a>
            </li>
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="#">Link</a>
            </li>
            <li class="nav-item">
              <a class="nav-link px-3 px-lg-2" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link px-3 px-lg-2 dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-expanded="false"
              >
                Dropdown
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li>
                  <a class="dropdown-item" href="#">Something else here</a>
                </li>
              </ul>
            </li>
          </ul>
          <form class="d-flex px-3 px-lg-2">
            <input
              class="form-control mr-2"
              type="search"
              placeholder="Search"
              aria-label="Search"
            />
            <button class="btn btn-outline-success" type="submit">
              Search
            </button>
          </form>
        </div>
      </div>
    </nav>
    <!-- navbar -->
    <!-- main-content -->
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"
      integrity="sha384-BOsAfwzjNJHrJ8cZidOg56tcQWfp6y72vEJ8xQ9w6Quywb24iOsW913URv1IS4GD"
      crossorigin="anonymous"
    ></script>
    <script type="text/javascript">
    	const mainNavigation = document.querySelector(".main-navigation");
		const overlay = mainNavigation.querySelector(".overlay");
		const toggler = mainNavigation.querySelector(".navbar-toggler");
		
		const openSideNav = () => mainNavigation.classList.add("active");
		const closeSideNav = () => mainNavigation.classList.remove("active");
		
		document.addEventListener("swiped-right", openSideNav);
		document.addEventListener("swiped-left", closeSideNav);
		toggler.addEventListener("click", openSideNav);
		overlay.addEventListener("click", closeSideNav);

    </script>
    <script>
		(function (window, document) {
		
		'use strict';
		
		// patch CustomEvent to allow constructor creation (IE/Chrome)
		if (typeof window.CustomEvent !== 'function') {
		
		    window.CustomEvent = function (event, params) {
		
		        params = params || { bubbles: false, cancelable: false, detail: undefined };
		
		        var evt = document.createEvent('CustomEvent');
		        evt.initCustomEvent(event, params.bubbles, params.cancelable, params.detail);
		        return evt;
		    };
		
		    window.CustomEvent.prototype = window.Event.prototype;
		}
		
		document.addEventListener('touchstart', handleTouchStart, false);
		document.addEventListener('touchmove', handleTouchMove, false);
		document.addEventListener('touchend', handleTouchEnd, false);
		
		var xDown = null;
		var yDown = null;
		var xDiff = null;
		var yDiff = null;
		var timeDown = null;
		var startEl = null;
		
		/**
		 * Fires swiped event if swipe detected on touchend
		 * @param {object} e - browser event object
		 * @returns {void}
		 */
		function handleTouchEnd(e) {
		
		    // if the user released on a different target, cancel!
		    if (startEl !== e.target) return;
		
		    var swipeThreshold = parseInt(getNearestAttribute(startEl, 'data-swipe-threshold', '20'), 10); // default 20px
		    var swipeTimeout = parseInt(getNearestAttribute(startEl, 'data-swipe-timeout', '500'), 10);    // default 500ms
		    var timeDiff = Date.now() - timeDown;
		    var eventType = '';
		    var changedTouches = e.changedTouches || e.touches || [];
		
		    if (Math.abs(xDiff) > Math.abs(yDiff)) { // most significant
		        if (Math.abs(xDiff) > swipeThreshold && timeDiff < swipeTimeout) {
		            if (xDiff > 0) {
		                eventType = 'swiped-left';
		            }
		            else {
		                eventType = 'swiped-right';
		            }
		        }
		    }
		    else if (Math.abs(yDiff) > swipeThreshold && timeDiff < swipeTimeout) {
		        if (yDiff > 0) {
		            eventType = 'swiped-up';
		        }
		        else {
		            eventType = 'swiped-down';
		        }
		    }
		
		    if (eventType !== '') {
		
		        var eventData = {
		            dir: eventType.replace(/swiped-/, ''),
		            xStart: parseInt(xDown, 10),
		            xEnd: parseInt((changedTouches[0] || {}).clientX || -1, 10),
		            yStart: parseInt(yDown, 10),
		            yEnd: parseInt((changedTouches[0] || {}).clientY || -1, 10)
		        };
		
		        // fire `swiped` event event on the element that started the swipe
		        startEl.dispatchEvent(new CustomEvent('swiped', { bubbles: true, cancelable: true, detail: eventData }));
		
		        // fire `swiped-dir` event on the element that started the swipe
		        startEl.dispatchEvent(new CustomEvent(eventType, { bubbles: true, cancelable: true, detail: eventData }));
		    }
		
		    // reset values
		    xDown = null;
		    yDown = null;
		    timeDown = null;
		}
		
		/**
		 * Records current location on touchstart event
		 * @param {object} e - browser event object
		 * @returns {void}
		 */
		function handleTouchStart(e) {
		
		    // if the element has data-swipe-ignore="true" we stop listening for swipe events
		    if (e.target.getAttribute('data-swipe-ignore') === 'true') return;
		
		    startEl = e.target;
		
		    timeDown = Date.now();
		    xDown = e.touches[0].clientX;
		    yDown = e.touches[0].clientY;
		    xDiff = 0;
		    yDiff = 0;
		}
		
		/**
		 * Records location diff in px on touchmove event
		 * @param {object} e - browser event object
		 * @returns {void}
		 */
		function handleTouchMove(e) {
		
		    if (!xDown || !yDown) return;
		
		    var xUp = e.touches[0].clientX;
		    var yUp = e.touches[0].clientY;
		
		    xDiff = xDown - xUp;
		    yDiff = yDown - yUp;
		}
		
		/**
		 * Gets attribute off HTML element or nearest parent
		 * @param {object} el - HTML element to retrieve attribute from
		 * @param {string} attributeName - name of the attribute
		 * @param {any} defaultValue - default value to return if no match found
		 * @returns {any} attribute value or defaultValue
		 */
		function getNearestAttribute(el, attributeName, defaultValue) {
		
		    // walk up the dom tree looking for data-action and data-trigger
		    while (el && el !== document.documentElement) {
		
		        var attributeValue = el.getAttribute(attributeName);
		
		        if (attributeValue) {
		            return attributeValue;
		        }
		
		        el = el.parentNode;
		    }
		
		    return defaultValue;
		}
		
		}(window, document));

    </script>
  </body>
</html>
        