<!DOCTYPE html> <!--[if IE 9 ]><html class="no-js oldie ie9 ie" lang="en-US" prefix="og: http://ogp.me/ns#" > <![endif]--> <!--[if (gt IE 9)|!(IE)]><!--><html class="no-js" lang="en-US" prefix="og: http://ogp.me/ns#"> <!--<![endif]--><head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={licenseKey:"9f9121d6e0",applicationID:"394099851"};window.NREUM||(NREUM={}),__nr_require=function(n,e,t){function r(t){if(!e[t]){var i=e[t]={exports:{}};n[t][0].call(i.exports,function(e){var i=n[t][1][e];return r(i||e)},i,i.exports)}return e[t].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<t.length;i++)r(t[i]);return r}({1:[function(n,e,t){function r(){}function i(n,e,t){return function(){return o(n,[u.now()].concat(f(arguments)),e?null:this,t),e?void 0:this}}var o=n("handle"),a=n(4),f=n(5),c=n("ee").get("tracer"),u=n("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(n,e){s[e]=i(d+e,!0,"api")}),s.addPageAction=i(d+"addPageAction",!0),s.setCurrentRouteName=i(d+"routeName",!0),e.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(n,e){var t={},r=this,i="function"==typeof e;return o(l+"tracer",[u.now(),n,t],r),function(){if(c.emit((i?"":"no-")+"fn-start",[u.now(),r,i],t),i)try{return e.apply(this,arguments)}catch(n){throw c.emit("fn-err",[arguments,this,n],t),n}finally{c.emit("fn-end",[u.now()],t)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(n,e){m[e]=i(l+e)}),newrelic.noticeError=function(n,e){"string"==typeof n&&(n=new Error(n)),o("err",[n,u.now(),!1,e])}},{}],2:[function(n,e,t){function r(n,e){var t=n.getEntries();t.forEach(function(n){"first-paint"===n.name?a("timing",["fp",Math.floor(n.startTime)]):"first-contentful-paint"===n.name&&a("timing",["fcp",Math.floor(n.startTime)])})}function i(n){if(n instanceof c&&!s){var e,t=Math.round(n.timeStamp);e=t>1e12?Date.now()-t:f.now()-t,s=!0,a("timing",["fi",t,{type:n.type,fid:e}])}}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var o,a=n("handle"),f=n("loader"),c=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){o=new PerformanceObserver(r);try{o.observe({entryTypes:["paint"]})}catch(u){}}if("addEventListener"in document){var s=!1,p=["click","keydown","mousedown","pointerdown","touchstart"];p.forEach(function(n){document.addEventListener(n,i,!1)})}}},{}],3:[function(n,e,t){function r(n,e){if(!i)return!1;if(n!==i)return!1;if(!e)return!0;if(!o)return!1;for(var t=o.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==t[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var f=navigator.userAgent,c=f.match(a);c&&f.indexOf("Chrome")===-1&&f.indexOf("Chromium")===-1&&(i="Safari",o=c[1])}e.exports={agent:i,version:o,match:r}},{}],4:[function(n,e,t){function r(n,e){var t=[],r="",o=0;for(r in n)i.call(n,r)&&(t[o]=e(r,n[r]),o+=1);return t}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],5:[function(n,e,t){function r(n,e,t){e||(e=0),"undefined"==typeof t&&(t=n?n.length:0);for(var r=-1,i=t-e||0,o=Array(i<0?0:i);++r<i;)o[r]=n[e+r];return o}e.exports=r},{}],6:[function(n,e,t){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(n,e,t){function r(){}function i(n){function e(n){return n&&n instanceof r?n:n?c(n,f,o):o()}function t(t,r,i,o){if(!d.aborted||o){n&&n(t,r,i);for(var a=e(i),f=v(t),c=f.length,u=0;u<c;u++)f[u].apply(a,r);var p=s[y[t]];return p&&p.push([b,t,r,a]),a}}function l(n,e){h[n]=v(n).concat(e)}function m(n,e){var t=h[n];if(t)for(var r=0;r<t.length;r++)t[r]===e&&t.splice(r,1)}function v(n){return h[n]||[]}function g(n){return p[n]=p[n]||i(t)}function w(n,e){u(n,function(n,t){e=e||"feature",y[t]=e,e in s||(s[e]=[])})}var h={},y={},b={on:l,addEventListener:l,removeEventListener:m,emit:t,get:g,listeners:v,context:e,buffer:w,abort:a,aborted:!1};return b}function o(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var f="nr@context",c=n("gos"),u=n(4),s={},p={},d=e.exports=i();d.backlog=s},{}],gos:[function(n,e,t){function r(n,e,t){if(i.call(n,e))return n[e];var r=t();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(n,e,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return n[e]=r,r}var i=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(n,e,t){function r(n,e,t,r){i.buffer([n],r),i.emit(n,e,t)}var i=n("ee").get("handle");e.exports=r,r.ee=i},{}],id:[function(n,e,t){function r(n){var e=typeof n;return!n||"object"!==e&&"function"!==e?-1:n===window?0:a(n,o,function(){return i++})}var i=1,o="nr@id",a=n("gos");e.exports=r},{}],loader:[function(n,e,t){function r(){if(!x++){var n=E.info=NREUM.info,e=l.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(n&&n.licenseKey&&n.applicationID&&e))return s.abort();u(y,function(e,t){n[e]||(n[e]=t)}),c("mark",["onload",a()+E.offset],null,"api");var t=l.createElement("script");t.src="https://"+n.agent,e.parentNode.insertBefore(t,e)}}function i(){"complete"===l.readyState&&o()}function o(){c("mark",["domContent",a()+E.offset],null,"api")}function a(){return O.exists&&performance.now?Math.round(performance.now()):(f=Math.max((new Date).getTime(),f))-E.offset}var f=(new Date).getTime(),c=n("handle"),u=n(4),s=n("ee"),p=n(3),d=window,l=d.document,m="addEventListener",v="attachEvent",g=d.XMLHttpRequest,w=g&&g.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:g,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var h=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1158.min.js"},b=g&&w&&w[m]&&!/CriOS/.test(navigator.userAgent),E=e.exports={offset:f,now:a,origin:h,features:{},xhrWrappable:b,userAgent:p};n(1),n(2),l[m]?(l[m]("DOMContentLoaded",o,!1),d[m]("load",r,!1)):(l[v]("onreadystatechange",i),d[v]("onload",r)),c("mark",["firstbyte",f],null,"api");var x=0,O=n(6)},{}],"wrap-function":[function(n,e,t){function r(n){return!(n&&n instanceof Function&&n.apply&&!n[a])}var i=n("ee"),o=n(5),a="nr@original",f=Object.prototype.hasOwnProperty,c=!1;e.exports=function(n,e){function t(n,e,t,i){function nrWrapper(){var r,a,f,c;try{a=this,r=o(arguments),f="function"==typeof t?t(r,a):t||{}}catch(u){d([u,"",[r,a,i],f])}s(e+"start",[r,a,i],f);try{return c=n.apply(a,r)}catch(p){throw s(e+"err",[r,a,p],f),p}finally{s(e+"end",[r,a,c],f)}}return r(n)?n:(e||(e=""),nrWrapper[a]=n,p(n,nrWrapper),nrWrapper)}function u(n,e,i,o){i||(i="");var a,f,c,u="-"===i.charAt(0);for(c=0;c<e.length;c++)f=e[c],a=n[f],r(a)||(n[f]=t(a,u?f+i:i,o,f))}function s(t,r,i){if(!c||e){var o=c;c=!0;try{n.emit(t,r,i,e)}catch(a){d([a,t,r,i])}c=o}}function p(n,e){if(Object.defineProperty&&Object.keys)try{var t=Object.keys(n);return t.forEach(function(t){Object.defineProperty(e,t,{get:function(){return n[t]},set:function(e){return n[t]=e,e}})}),e}catch(r){d([r])}for(var i in n)f.call(n,i)&&(e[i]=n[i]);return e}function d(e){try{n.emit("internal-error",e)}catch(t){}}return n||(n=i),t.inPlace=u,t.flag=a,t}},{}]},{},["loader"]);</script><meta name="viewport" content="initial-scale=1,user-scalable=no,width=device-width">
<script>var et_site_url = 'https://epi-age.com';
var et_post_id = '110';

function et_core_page_resource_fallback(a, b) {
    "undefined" === typeof b && (b = a.sheet.cssRules && 0 === a.sheet.cssRules.length);
    b && (a.onerror = null, a.onload = null, a.href ? a.href = et_site_url + "/?et_core_page_resource=" + a.id + et_post_id : a.src && (a.src = et_site_url + "/?et_core_page_resource=" + a.id + et_post_id))
}</script>
<link rel="alternate" hreflang="en" href="index.htm">
<link rel="alternate" hreflang="fr" href="..\fr\a-propos\index.htm">
<link rel="alternate" hreflang="zh-hant" href="..\zh-hant\%E5%85%AC%E5%8F%B8%E7%B0%A1%E4%BB%8B\index.htm">
<style type="text/css" media="all">img.wp-smiley, img.emoji {
    display: inline !important;
    border: 0 !important;
    box-shadow: none !important;
    height: 1em !important;
    width: 1em !important;
    margin: 0 .07em !important;
    vertical-align: -.1em !important;
    background: none !important;
    padding: 0 !important
}</style>
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_60d55775b9abbe4d646765dfc7c2326f.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_322304e40168d07e21782373951ee4b3.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_fd42ec329f2ebd73e7e4f64cd2ac77e7.css" rel="stylesheet">
<style type="text/css" media="all">.post-views.entry-meta > span {
    margin-right: 0 !important;
    font: 16px/1
}

.post-views.entry-meta > span.post-views-icon.dashicons {
    display: inline-block;
    font-size: 16px;
    line-height: 1;
    text-decoration: inherit;
    vertical-align: middle
}</style>
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_89656ed6fb2e45c6049482e121fc2d88.css" rel="stylesheet">
<link type="text/css" media="only screen and (max-width: 768px)"
      href="..\wp-content\cache\breeze-minification\css\breeze_98f4e97f86b642bf082c65ae518ad010.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_0c1e0c74e469d347999e5241c6bbee87.css" rel="stylesheet">
<style type="text/css" media="all">.woocommerce form .form-row .required {
    visibility: visible
}</style>
<style type="text/css" media="all">.wpml-ls-menu-item .wpml-ls-flag {
    display: inline;
    vertical-align: baseline;
    width: 18px;
    height: 12px
}

.wpml-ls-menu-item .wpml-ls-flag + span {
    margin-left: .3em
}

.rtl .wpml-ls-menu-item .wpml-ls-flag + span {
    margin-left: 0;
    margin-right: .3em
}</style>
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_c9021b9715757a9cbb4a3a21980188da.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_2d3404847d9c53ec1d14d85d1e4529d4.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_e995cca2b542d89d1fed351f8c2e62bd.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_a04f0c53eead19d8eb9961bec61c7363.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_3b6aaa32516c65009102e74364378b1a.css" rel="stylesheet">
<style type="text/css" media="all">.auxin-pro .elementor-add-new-section .elementor-add-section-button {
    background-color: #4599c1
}</style>
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_ab039fcba5e04fce025cdd0b95ffb6b8.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_66525165f5851b515ae1629e14039e9a.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_32c53dbd4c3a76167a1df8bdda7ac5d5.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_538f8004f7f1736c582e54dbe5087f2e.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_37f1362b33f10ff08c6b19f1d4328a97.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_b450885a6bb6cebacbecd036327f7d0a.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_a5cd21687116274096832954139c3a5f.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_bf6cfa094298b359ea356ea5d4e201ac.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_d79587b407fd584ebceadab2938cbcb2.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_dbc30551c86d492e61982ba9ea2d121f.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_9131242a0d7eac6f54c220a2f4a2c96f.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_f696072f1c9143ee393296df292e60af.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_80696e0e1b70d7b9307f3dc004ea3653.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_676cc0334a9799f77b2f7cd04bbca03a.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_e58894fd74c6d932ca28016a89bdaa1d.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_5c2a3a6c9e3cb9e9b2a556962b5661b8.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_c1561a766a3d3e7183697a91b4cc51ef.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_edbf43c989389420975f4b0f309c35b2.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_59336521688d38bb8f1c5501c73ce211.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_5487bfe423fa731368056f116167785a.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_76e4d83ceb496fcfb2b6f161142cbd69.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_22be212ef72f1011ce541c90041d16f3.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_93fc14cbcb2434bc7711c7e8eab6a2ba.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_37f0f02b3c1c56f6b474bad490849473.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_ea2e1a8677ef400bf192008296cf5d03.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_c77ae194cd5b025baa7c6fd1a24137d6.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_abc4e3c2f8c1400e944853a6f14b048a.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_afcb16d3ae878da9961ca53164e1f2aa.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_fb1e35155d11a8c40e32f8be9351ee53.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_a995f682910b091a3966acfb5857c52e.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_ccfd868445616ea8ac0de39dc251979d.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_e0681482aaf0007fd323a9da1ce7f675.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_6fea8331ec95a566deb3fd8f2e5642e9.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_9898b4fbe7dab96d336d3ed7f6a91dea.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_56f902a1b9086d69f7dbfe86f7a16e2d.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_57e6fa1a653a49c9ff4d84c28f701008.css" rel="stylesheet">
<style type="text/css" media="all">.request_name {
    display: none !important
}</style>
<style type="text/css" media="all"></style>
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_0e52270bb2436584529214348696a9e4.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_b5f3be0dda2d1b03e574ebc8c7b5aed9.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_9fd9d75a42c8f1cd6c4aff899dbf1d23.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_e992b4b69c57c082b28c4f2132d98846.css" rel="stylesheet">
<link type="text/css" media="all"
      href="..\wp-content\cache\breeze-minification\css\breeze_de0aab8469b6f59e047ef6962eaa305c.css" rel="stylesheet">
<title>About - Epigenetic Age</title>
<meta name="description" content="https://www.youtube.com/watch?v=sZC5rWFECIo">
<meta name="robots" content="follow,index,max-snippet:-1,max-video-preview:-1,max-image-preview:large">
<link rel="canonical" href="index.htm">
<meta property="og:locale" content="en_US">
<meta property="og:type" content="article">
<meta property="og:title" content="About - Epigenetic Age">
<meta property="og:description" content="https://www.youtube.com/watch?v=sZC5rWFECIo">
<meta property="og:url" content="https://epi-age.com/about/">
<meta property="og:site_name" content="Epigenetic Age">
<meta property="article:publisher" content="https://www.facebook.com/epiageMontreal/">
<meta property="article:published_time" content="2019-09-10T01:56:14-04:00">
<meta property="article:modified_time" content="2019-12-12T10:27:18-04:00">
<meta property="og:updated_time" content="2019-12-12T10:27:18-04:00">
<meta property="og:image" content="https://epi-age.com/wp-content/uploads/2019/10/epiage-team-work.jpg">
<meta property="og:image:secure_url" content="https://epi-age.com/wp-content/uploads/2019/10/epiage-team-work.jpg">
<meta property="og:image:width" content="922">
<meta property="og:image:height" content="1382">
<meta property="og:image:alt" content="Epiage team">
<meta property="og:image:type" content="image/jpeg">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="About - Epigenetic Age">
<meta name="twitter:description" content="https://www.youtube.com/watch?v=sZC5rWFECIo">
<meta name="twitter:image" content="https://epi-age.com/wp-content/uploads/2019/10/epiage-team-work.jpg">
<script type="application/ld+json">{
    "@context": "https:\/\/schema.org",
    "@type": "Article",
    "headline": "About",
    "description": "https:\/\/www.youtube.com\/watch?v=sZC5rWFECIo BACKGROUND HKG Epitherapeutics Inc. was founded in 2016 by Prof. Moshe Szyf, a world pioneer in the exciting an",
    "datePublished": "2019-09-10T01:56:14-04:00",
    "dateModified": "2019-12-12T10:27:18-04:00",
    "publisher": {
        "@type": "Organization",
        "name": "HKG Epitherapeutics",
        "logo": {
            "@type": "ImageObject",
            "url": "https:\/\/epi-age.com\/wp-content\/uploads\/2019\/09\/epiage-logo.png"
        }
    },
    "mainEntityOfPage": {
        "@type": "WebPage",
        "@id": "https:\/\/epi-age.com\/about\/"
    },
    "author": {
        "@type": "Person",
        "name": "Assiya"
    },
    "image": {
        "@type": "ImageObject",
        "url": "https:\/\/epi-age.com\/wp-content\/uploads\/2019\/10\/epiage-team-work-922x1024.jpg",
        "width": 200,
        "height": 200
    }
}</script>
<link rel='dns-prefetch' href='//fonts.googleapis.com'>
<link rel='dns-prefetch' href='//s.w.org'>
<link rel="alternate" type="application/rss+xml" title="Epigenetic Age &raquo; Feed" href="..\feed\index.htm">
<link rel="alternate" type="application/rss+xml" title="Epigenetic Age &raquo; Comments Feed"
      href="..\comments\feed\index.htm">
<link rel='stylesheet' id='dashicons-css' href='..\wp-includes\css\dashicons.min.css?ver=5.3.2' type='text/css'
      media='all'>
<link rel='stylesheet' id='et-gf-open-sans-css' href='https://fonts.googleapis.com/css?family=Open+Sans:400,700'
      type='text/css' media='all'>
<link rel='stylesheet' id='poppins-css'
      href='https://fonts.googleapis.com/css?family=Poppins%3A300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic&#038;ver=5.3.2'
      type='text/css' media='all'>
<link rel='stylesheet' id='auxin-fonts-google-css'
      href='//fonts.googleapis.com/css?family=Open+Sans%3A400%2C900italic%2C900%2C800italic%2C800%2C700italic%2C700%2C600italic%2C600%2C500italic%2C500%2C400italic%2C300italic%2C300%2C200italic%2C200%2C100italic%2C100%7CPoppins%3A400%2C900italic%2C900%2C800italic%2C800%2C700italic%2C700%2C600italic%2C600%2C500italic%2C500%2C400italic%2C300italic%2C300%2C200italic%2C200%2C100italic%2C100%7COpen+Sans%3A300%2C300italic%2Cregular%2Citalic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%7CPoppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CRoboto%3A100%2C100italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C700%2C700italic%2C900%2C900italic&#038;ver=8'
      type='text/css' media='all'>
<link rel='stylesheet' id='google-fonts-1-css'
      href='https://fonts.googleapis.com/css?family=Open+Sans%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CPoppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&#038;ver=5.3.2'
      type='text/css' media='all'>
<link rel='https://api.w.org/' href='..\wp-json\index.htm'>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://epi-age.com/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="..\wp-includes\wlwmanifest.xml">
<meta name="generator" content="WordPress 5.3.2">
<link rel='shortlink' href='https://epi-age.com/?p=110'>
<link rel="alternate" type="application/json+oembed"
      href="..\wp-json\oembed\1.0\embed-2?url=https%3A%2F%2Fepi-age.com%2Fabout%2F">
<link rel="alternate" type="text/xml+oembed"
      href="..\wp-json\oembed\1.0\embed-3?url=https%3A%2F%2Fepi-age.com%2Fabout%2F&#038;format=xml">
<meta name="generator" content="WPML ver:4.2.9 stt:61,1,4,41,45;">
<noscript><img height="1" width="1" src="https://www.facebook.com/tr?id=343036166616589&ev=PageView
&noscript=1"></noscript>
<meta name="generator" content="MasterSlider 3.2.14 - Responsive Touch Image Slider">
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-153149008-1"></script>
<meta name="referrer" content="always">
<meta name="theme-color" content="#1bb0ce">
<meta name="msapplication-navbutton-color" content="#1bb0ce">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<noscript>
    <style>.woocommerce-product-gallery {
        opacity: 1 !important;
    }</style>
</noscript>
<link rel="icon" href="..\wp-content\uploads\2019\09\cropped-epiage-logo-32x32.png" sizes="32x32">
<link rel="icon" href="..\wp-content\uploads\2019\09\cropped-epiage-logo-192x192.png" sizes="192x192">
<link rel="apple-touch-icon-precomposed" href="..\wp-content\uploads\2019\09\cropped-epiage-logo-180x180.png">
<meta name="msapplication-TileImage"
      content="https://epi-age.com/wp-content/uploads/2019/09/cropped-epiage-logo-270x270.png">
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e3731cdbd08972e74152396458fa77b0.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_118b6da8b28c20e8cb645e4fcbc33cf1.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_7a002d85ecf4e6472e1b7d09f1a1ac99.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_49edccea2e7ba985cadc9ba0531cbed1.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e7aeaf94a40cf48bfd24b08326ef4cb4.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_ad10cd46a043368685a36a611490d08e.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_623dc51d96699f0f44680aee3d7e332b.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_fdd67d0316e33e8f57f8e3cbeaf5b490.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_f07d3671084f32c308c61c9b851467dd.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_d8a3a3f5008c096b2769610b3710502b.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_1a91087b7d35102bcaba9bfda05f6881.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_109db272d345591768d418fa309aca43.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_990a95833cf65aa47eaffd105aee3456.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e60b8a04ad4577db5bf7dc370911ad34.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_f43ae1e95c6f01fb009244c493c03a9c.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_f20735f14a8b1b541dceb0e894b3f6ec.js"></script>
</head><body class="page-template-default page page-id-110 wp-custom-logo theme-phlox-pro _masterslider _msp_version_3.2.14 woocommerce-no-js _auxels auxin-pro et_bloom et_monarch elementor-default elementor-page elementor-page-110 phlox-pro aux-dom-unready aux-full-width aux-resp aux-hd aux-page-animation-off" data-framed=""><div id="inner-body"><div data-elementor-type="header" data-elementor-id="2653" class="elementor elementor-2653 elementor-location-header" data-elementor-settings="[]"><div class="elementor-inner"><div class="elementor-section-wrap"><section class="elementor-element elementor-element-5d1649f elementor-section-stretched elementor-section-content-middle elementor-section-full_width elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="5d1649f" data-element_type="section" data-settings="{&quot;stretch_section&quot;:&quot;section-stretched&quot;,&quot;background_background&quot;:&quot;classic&quot;}"><div class="elementor-background-overlay"></div><div class="elementor-container elementor-column-gap-default"><div class="elementor-row"><div class="aux-parallax-section elementor-element elementor-element-f03afcc elementor-column elementor-col-20 elementor-top-column" data-id="f03afcc" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-7ac1aee elementor-widget elementor-widget-theme-site-logo elementor-widget-image" data-id="7ac1aee" data-element_type="widget" data-widget_type="theme-site-logo.default"><div class="elementor-widget-container"><div class="elementor-image">
<a data-elementor-open-lightbox="" href="..\index.htm"> <img
        src="..\wp-content\uploads\elementor\thumbs\epiage-logo-oi9zs13ezdg1svvaw06kx0xz11x93gwncx24lyhv5w.png"
        title="MTL Epitherapeutics" alt="MTL Epitherapeutics">
</a></div></div></div></div></div></div><div class="aux-parallax-section elementor-element elementor-element-54b5c85 elementor-column elementor-col-20 elementor-top-column" data-id="54b5c85" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-f6833da elementor-nav-menu__align-center elementor-nav-menu--stretch elementor-nav-menu__text-align-center elementor-nav-menu--indicator-classic elementor-nav-menu--dropdown-tablet elementor-nav-menu--toggle elementor-nav-menu--burger elementor-widget elementor-widget-nav-menu" data-id="f6833da" data-element_type="widget" data-settings="{&quot;full_width&quot;:&quot;stretch&quot;,&quot;layout&quot;:&quot;horizontal&quot;,&quot;toggle&quot;:&quot;burger&quot;}" data-widget_type="nav-menu.default"><div class="elementor-widget-container"><nav class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-horizontal e--pointer-text e--animation-none"><ul id="menu-1-f6833da" class="elementor-nav-menu"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-117"><a href="..\index.htm" class="elementor-item">Home</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-110 current_page_item menu-item-has-children menu-item-125"><a href="index.htm" aria-current="page" class="elementor-item elementor-item-active">About</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1174"><a href="..\moshe-szyf\index.htm" class="elementor-sub-item">Moshe Szyf</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-126"><a href="..\team\index.htm" class="elementor-sub-item">Team</a></li></ul></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-127"><a href="..\how-it-works\index.htm" class="elementor-item">How Does It Work?</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-131"><a href="..\faq\index.htm" class="elementor-sub-item">FAQ</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2948"><a href="..\questionnaires\index.htm" class="elementor-sub-item">Questionnaires</a></li></ul></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-128"><a href="..\shop\index.htm" class="elementor-item">Shop</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-product menu-item-648"><a href="..\product\epiage\index.htm" class="elementor-sub-item">epiAge</a></li><li class="menu-item menu-item-type-post_type menu-item-object-product menu-item-649"><a href="..\product\episame\index.htm" class="elementor-sub-item">epiSAMe</a></li></ul></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2087"><a href="..\blog\index.htm" class="elementor-item">Blog</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-130"><a href="..\contact\index.htm" class="elementor-item">Contact Us</a></li><li class="menu-item-language menu-item-language-current menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-en wpml-ls-current-language wpml-ls-menu-item wpml-ls-first-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-has-children menu-item-wpml-ls-21-en"><a title="English" href="index.htm" class="elementor-item"><span class="wpml-ls-native">English</span></a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-fr wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-fr"><a title="Français" href="..\fr\a-propos\index.htm" class="elementor-sub-item"><span class="wpml-ls-native">Français</span></a></li><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-ru wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-ru"><a title="Русский" href="https://epi-age.com/ru/" class="elementor-sub-item"><span class="wpml-ls-native">Русский</span></a></li><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-zh-hant wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-zh-hant"><a title="繁體中文" href="..\zh-hant\%E5%85%AC%E5%8F%B8%E7%B0%A1%E4%BB%8B\index.htm" class="elementor-sub-item"><span class="wpml-ls-native">繁體中文</span></a></li><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-pt-pt wpml-ls-menu-item wpml-ls-last-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-pt-pt"><a title="Português" href="https://epi-age.com/pt-pt/" class="elementor-sub-item"><span class="wpml-ls-native">Português</span></a></li></ul></li></ul></nav><div class="elementor-menu-toggle">
<i class="eicon-menu-bar" aria-hidden="true"></i> <span
        class="elementor-screen-only">Menu</span></div><nav class="elementor-nav-menu--dropdown elementor-nav-menu__container"><ul id="menu-2-f6833da" class="elementor-nav-menu"><li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-117"><a href="..\index.htm" class="elementor-item">Home</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-110 current_page_item menu-item-has-children menu-item-125"><a href="index.htm" aria-current="page" class="elementor-item elementor-item-active">About</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1174"><a href="..\moshe-szyf\index.htm" class="elementor-sub-item">Moshe Szyf</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-126"><a href="..\team\index.htm" class="elementor-sub-item">Team</a></li></ul></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-127"><a href="..\how-it-works\index.htm" class="elementor-item">How Does It Work?</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-131"><a href="..\faq\index.htm" class="elementor-sub-item">FAQ</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2948"><a href="..\questionnaires\index.htm" class="elementor-sub-item">Questionnaires</a></li></ul></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-128"><a href="..\shop\index.htm" class="elementor-item">Shop</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-product menu-item-648"><a href="..\product\epiage\index.htm" class="elementor-sub-item">epiAge</a></li><li class="menu-item menu-item-type-post_type menu-item-object-product menu-item-649"><a href="..\product\episame\index.htm" class="elementor-sub-item">epiSAMe</a></li></ul></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2087"><a href="..\blog\index.htm" class="elementor-item">Blog</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-130"><a href="..\contact\index.htm" class="elementor-item">Contact Us</a></li><li class="menu-item-language menu-item-language-current menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-en wpml-ls-current-language wpml-ls-menu-item wpml-ls-first-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-has-children menu-item-wpml-ls-21-en"><a title="English" href="index.htm" class="elementor-item"><span class="wpml-ls-native">English</span></a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-fr wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-fr"><a title="Français" href="..\fr\a-propos\index.htm" class="elementor-sub-item"><span class="wpml-ls-native">Français</span></a></li><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-ru wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-ru"><a title="Русский" href="https://epi-age.com/ru/" class="elementor-sub-item"><span class="wpml-ls-native">Русский</span></a></li><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-zh-hant wpml-ls-menu-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-zh-hant"><a title="繁體中文" href="..\zh-hant\%E5%85%AC%E5%8F%B8%E7%B0%A1%E4%BB%8B\index.htm" class="elementor-sub-item"><span class="wpml-ls-native">繁體中文</span></a></li><li class="menu-item-language menu-item wpml-ls-slot-21 wpml-ls-item wpml-ls-item-pt-pt wpml-ls-menu-item wpml-ls-last-item menu-item-type-wpml_ls_menu_item menu-item-object-wpml_ls_menu_item menu-item-wpml-ls-21-pt-pt"><a title="Português" href="https://epi-age.com/pt-pt/" class="elementor-sub-item"><span class="wpml-ls-native">Português</span></a></li></ul></li></ul></nav></div></div></div></div></div><div class="aux-parallax-section elementor-element elementor-element-8e20860 elementor-hidden-phone elementor-column elementor-col-20 elementor-top-column" data-id="8e20860" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-42bfcf6 elementor-widget-tablet__width-inherit elementor-hidden-phone aux-appear-watch-animation aux-fade-in elementor-widget elementor-widget-aux_button" data-id="42bfcf6" data-element_type="widget" data-widget_type="aux_button.default"><div class="elementor-widget-container">
<a href="..\product\epiage\index.htm" target="_self"
   class="aux-button aux-medium aux-tiffany-blue aux-curve aux-none aux-uppercase"><span
        class="aux-overlay"></span><span
        class="aux-text">BUY NOW</span></a></div></div></div></div></div><div class="aux-parallax-section elementor-element elementor-element-f369691 elementor-column elementor-col-20 elementor-top-column" data-id="f369691" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-4cc2afb toggle-icon--cart-solid elementor-hidden-phone elementor-menu-cart--items-indicator-bubble elementor-menu-cart--show-remove-button-yes elementor-menu-cart--buttons-inline elementor-widget elementor-widget-woocommerce-menu-cart" data-id="4cc2afb" data-element_type="widget" data-widget_type="woocommerce-menu-cart.default"><div class="elementor-widget-container"><div class="elementor-menu-cart__wrapper"><div class="elementor-menu-cart__container elementor-lightbox"><div class="elementor-menu-cart__main"><div class="elementor-menu-cart__close-button"></div><div class="widget_shopping_cart_content"></div></div></div><div class="elementor-menu-cart__toggle elementor-button-wrapper">
<a id="elementor-menu-cart__toggle_button" href="#" class="elementor-button elementor-size-sm"> <span
        class="elementor-button-text"><span class="woocommerce-Price-amount amount"><span
        class="woocommerce-Price-currencySymbol">&#36;</span>0.00</span></span> <span class="elementor-button-icon"
                                                                                      data-counter="0"> <i class="eicon"
                                                                                                           aria-hidden="true"></i> <span
        class="elementor-screen-only">Cart</span> </span>
</a></div></div></div></div></div></div></div><div class="aux-parallax-section elementor-element elementor-element-7d129f3 elementor-column elementor-col-20 elementor-top-column" data-id="7d129f3" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-bc7041b elementor-nav-menu--indicator-classic elementor-nav-menu--dropdown-tablet elementor-nav-menu__text-align-aside elementor-nav-menu--toggle elementor-nav-menu--burger elementor-widget elementor-widget-nav-menu" data-id="bc7041b" data-element_type="widget" data-settings="{&quot;layout&quot;:&quot;horizontal&quot;,&quot;toggle&quot;:&quot;burger&quot;}" data-widget_type="nav-menu.default"><div class="elementor-widget-container"><nav class="elementor-nav-menu--main elementor-nav-menu__container elementor-nav-menu--layout-horizontal e--pointer-underline e--animation-fade"><ul id="menu-1-bc7041b" class="elementor-nav-menu"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2964"><a href="https://epi-age.com/account/" class="elementor-item">Account</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2953"><a href="..\register\index.htm" class="elementor-sub-item">Register</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2954"><a href="..\login\index.htm" class="elementor-sub-item">Login</a></li></ul></li></ul></nav><div class="elementor-menu-toggle">
<i class="eicon-menu-bar" aria-hidden="true"></i> <span
        class="elementor-screen-only">Menu</span></div><nav class="elementor-nav-menu--dropdown elementor-nav-menu__container"><ul id="menu-2-bc7041b" class="elementor-nav-menu"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-2964"><a href="https://epi-age.com/account/" class="elementor-item">Account</a><ul class="sub-menu elementor-nav-menu--dropdown"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2953"><a href="..\register\index.htm" class="elementor-sub-item">Register</a></li><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2954"><a href="..\login\index.htm" class="elementor-sub-item">Login</a></li></ul></li></ul></nav></div></div></div></div></div></div></div></section></div></div></div><header id="site-title" class="page-title-section"><div class="page-header aux-wrapper aux-auto-height aux-boxed-container aux-bread-bordered aux-bread-sep-gt aux-center aux-middle aux-light aux-arrow-none" style="display:block; background-color: #0d6eb8 !important; "><div class="aux-container"><div class="aux-page-title-entry"><div class="aux-page-title-box"><section class="page-title-group"><h1 class="page-title">About</h1></section></div></div></div><div class="aux-header-overlay" style="background-color: #0d6eb8"></div></div></header><main id="main" class="aux-main aux-territory aux-single aux-page aux-boxed-container aux-content-top-margin no-sidebar aux-sidebar-style-border aux-user-entry"><div class="aux-wrapper"><div class="aux-container aux-fold"><div id="primary" class="aux-primary"><div class="content" role="main"><article id="post-110" class="post-110 page type-page status-publish hentry"><div class="entry-main"><div class="entry-content"><div data-elementor-type="wp-page" data-elementor-id="110" class="elementor elementor-110" data-elementor-settings="[]"><div class="elementor-inner"><div class="elementor-section-wrap"><section class="elementor-element elementor-element-7097a04 elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="7097a04" data-element_type="section"><div class="elementor-container elementor-column-gap-default"><div class="elementor-row"><div class="aux-parallax-section elementor-element elementor-element-42ffe0d elementor-column elementor-col-50 elementor-top-column" data-id="42ffe0d" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-1ffcd27 elementor-aspect-ratio-169 elementor-widget elementor-widget-video" data-id="1ffcd27" data-element_type="widget" data-settings="{&quot;lightbox&quot;:&quot;yes&quot;,&quot;lightbox_content_animation&quot;:&quot;fadeInUp&quot;,&quot;aspect_ratio&quot;:&quot;169&quot;}" data-widget_type="video.default"><div class="elementor-widget-container"><div class="elementor-wrapper elementor-open-lightbox"><div class="elementor-custom-embed-image-overlay" data-elementor-open-lightbox="yes" data-elementor-lightbox="{&quot;type&quot;:&quot;video&quot;,&quot;videoType&quot;:&quot;youtube&quot;,&quot;url&quot;:&quot;https:\/\/www.youtube-nocookie.com\/embed\/sZC5rWFECIo?feature=oembed&amp;start&amp;end&amp;wmode=opaque&amp;loop=0&amp;controls=1&amp;mute=0&amp;rel=0&amp;modestbranding=1&quot;,&quot;modalOptions&quot;:{&quot;id&quot;:&quot;elementor-lightbox-1ffcd27&quot;,&quot;entranceAnimation&quot;:&quot;fadeInUp&quot;,&quot;entranceAnimation_tablet&quot;:&quot;&quot;,&quot;entranceAnimation_mobile&quot;:&quot;&quot;,&quot;videoAspectRatio&quot;:&quot;169&quot;}}">
<img width="634" height="800" src="..\wp-content\uploads\2019\10\epiage-team1.jpg" class="attachment-full size-full"
     alt="Epiage team"
     srcset="..\wp-content\uploads\2019\10\epiage-team1.jpg 634w, ..\wp-content\uploads\2019\10\epiage-team1-600x757.jpg 600w"
     sizes="(max-width: 634px) 100vw, 634px">
<div class="elementor-custom-embed-play" role="button"><i class="eicon-play" aria-hidden="true"></i> <span
        class="elementor-screen-only">Play Video</span></div>
</div></div></div></div></div></div></div><div class="aux-parallax-section elementor-element elementor-element-8fd3164 elementor-column elementor-col-50 elementor-top-column" data-id="8fd3164" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-a02691f elementor-widget elementor-widget-text-editor" data-id="a02691f" data-element_type="widget" data-widget_type="text-editor.default"><div class="elementor-widget-container"><div class="elementor-text-editor elementor-clearfix"><p>BACKGROUND</p><p><strong><a href="http://www.hkgepitherapeutics.com" target="_blank" rel="noopener">HKG Epitherapeutics Inc</a>.</strong> was founded in 2016 by
<strong>Prof. Moshe
    Szyf</strong>, a world pioneer in the exciting and rapidly emerging science of Epigenetics.</p><p>A Hong Kong company, dedicated to harnessing the untapped power and possibilities of Epigenetics (with its research and diagnostic lab in Hong Kong),
<a href="http://www.hkgepitherapeutics.com" target="_blank" rel="noopener"><strong>HKG
    Epithehrapeutics</strong></a> is planning to expand operations by establishing “next generation” genetic diagnostic labs in several countries.</p></div></div></div><div class="elementor-element elementor-element-dfd0fc1 elementor-widget__width-auto elementor-widget-tablet__width-inherit aux-appear-watch-animation aux-fade-in elementor-widget-mobile__width-inherit elementor-widget elementor-widget-aux_button" data-id="dfd0fc1" data-element_type="widget" data-widget_type="aux_button.default"><div class="elementor-widget-container">
<a href="https://epiage.ca/moshe-szyf/" target="_self"
   class="aux-button aux-large aux-tiffany-blue aux-curve aux-none aux-uppercase" rel="noopener"><span
        class="aux-overlay"></span><span
        class="aux-text">More About Moshe Szyf</span></a></div></div></div></div></div></div></div></section><section class="elementor-element elementor-element-a6ddc83 elementor-section-content-middle elementor-section-stretched elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="a6ddc83" data-element_type="section" data-settings="{&quot;stretch_section&quot;:&quot;section-stretched&quot;,&quot;background_background&quot;:&quot;classic&quot;}"><div class="elementor-container elementor-column-gap-default"><div class="elementor-row"><div class="aux-parallax-section elementor-element elementor-element-82a53a8 elementor-column elementor-col-50 elementor-top-column" data-id="82a53a8" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-aff2695 aux-appear-watch-animation aux-fade-in-up elementor-widget elementor-widget-text-editor" data-id="aff2695" data-element_type="widget" data-widget_type="text-editor.default"><div class="elementor-widget-container"><div class="elementor-text-editor elementor-clearfix"><p><strong>MISSION</strong></p><p>With an emphasis on the evolving markets in Euro-Asia and our immediate focus on tests, prevention and early treatment for common diseases, our mission is
<strong>to positively impact the healthcare, well-being and quality of
    life</strong> for large populations of people, worldwide.</p><p>Simply stated, the science of Epigenetics centers on DNA Methylation (a simple biochemical process) that changes a mark on your DNA when cancer or other catastrophic diseases may develop.</p></div></div></div></div></div></div><div class="aux-parallax-section elementor-element elementor-element-f8c8520 elementor-column elementor-col-50 elementor-top-column" data-id="f8c8520" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-d5f114e elementor-widget elementor-widget-image" data-id="d5f114e" data-element_type="widget" data-widget_type="image.default"><div class="elementor-widget-container"><div class="elementor-image">
<img width="922" height="1024" src="..\wp-content\uploads\2019\10\epiage-team-work-922x1024.jpg"
     class="attachment-large size-large"
     alt="Epiage team"></div></div></div></div></div></div></div></div></section><section class="elementor-element elementor-element-3e84149 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="3e84149" data-element_type="section"><div class="elementor-container elementor-column-gap-default"><div class="elementor-row"><div class="aux-parallax-section elementor-element elementor-element-b8028b7 elementor-column elementor-col-100 elementor-top-column" data-id="b8028b7" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-0c23dfd elementor-widget elementor-widget-text-editor" data-id="0c23dfd" data-element_type="widget" data-widget_type="text-editor.default"><div class="elementor-widget-container"><div class="elementor-text-editor elementor-clearfix"><p>While the company is new, Szyf’s three decades of ground-breaking research and cutting-edge innovations in Epigenetics — how it occurs and how it is passed from generation to generation — has already disrupted medical science with its potential to detect, diagnose, prevent or cure diseases.</p><p><a href="https://www.hkgepitherapeutics.com/" target="_blank" rel="noopener">HKG Epitherapeutics</a> believes the ability to measure and diagnose these changes in DNA will not only revolutionize the impact on fighting disease but on regulating our critical cardiovascular, neurological, reproductive, and detoxification systems as well.​</p><p>We believe that integrating our novel diagnostics into these developing markets will greatly affect the quality of health care for the people of these countries. We are interested in building diagnostic licensing partnerships in this area, as they become available.</p><p>​We invite you to
<span style="color: #0d6eb8;"><a style="color: #0d6eb8;"
                                 href="https://woocommerce-120136-983812.cloudwaysapps.com/contact/" target="_blank"
                                 rel="noopener">contact us</a></span> for more information. Join our mission to be a major force in the explosive new science of Epigenetics by becoming a partner and an influencer in global healthcare.</p></div></div></div><div class="elementor-element elementor-element-3e0b7bf elementor-widget-tablet__width-inherit elementor-widget-mobile__width-inherit aux-appear-watch-animation aux-fade-in elementor-widget elementor-widget-aux_button" data-id="3e0b7bf" data-element_type="widget" data-widget_type="aux_button.default"><div class="elementor-widget-container">
<a href="https://epiage.ca/team/" target="_self"
   class="aux-button aux-medium aux-tiffany-blue aux-curve aux-none aux-uppercase" rel="noopener"><span
        class="aux-overlay"></span><span
        class="aux-text">Meet the DNA Methylation Team</span></a></div></div></div></div></div></div></div></section></div></div></div><div class="clear"></div></div><footer class="entry-meta"></footer></div></article><div class="clear"></div><div class="clear"></div></div></div></div></div></main><aside class="aux-subfooter-bar vertical-none-full"><div class="aux-wrapper"><div class="aux-container "><div class="aux-widget-area"><section id="elementor-library-4" class="widget-container widget_elementor-library"><div data-elementor-type="section" data-elementor-id="514" class="elementor elementor-514" data-elementor-settings="[]"><div class="elementor-inner"><div class="elementor-section-wrap"><section class="elementor-element elementor-element-2039d7e0 elementor-section-stretched elementor-section-height-min-height elementor-section-items-top elementor-section-boxed elementor-section-height-default elementor-section elementor-top-section" data-id="2039d7e0" data-element_type="section" data-settings="{&quot;stretch_section&quot;:&quot;section-stretched&quot;,&quot;background_background&quot;:&quot;gradient&quot;}"><div class="elementor-container elementor-column-gap-default"><div class="elementor-row"><div class="aux-parallax-section elementor-element elementor-element-56dd01c elementor-column elementor-col-33 elementor-top-column" data-id="56dd01c" data-element_type="column" data-settings="{&quot;background_background&quot;:&quot;gradient&quot;}"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-2ad7f2de aux-appear-watch-animation aux-fade-in-up elementor-widget elementor-widget-aux_modern_heading" data-id="2ad7f2de" data-element_type="widget" data-widget_type="aux_modern_heading.default"><div class="elementor-widget-container"><section class="aux-widget-modern-heading"><div class="aux-widget-inner "><h2 class="aux-modern-heading-primary">TAKE CHARGE OF YOUR LIFE</h2><div class="aux-modern-heading-divider"></div><div class="aux-modern-heading-description"><p>​Research has uncovered another ground-breaking discovery: environment and lifestyle choices may also affect your health and biological age. Smoking, diet, drugs, exercise, stress, etc., are factors that may alter the genetic code of, not only you, but of your children and grand-children, as well. But knowledge is, indeed, golden. Knowing your true age and associated risks, gives you the opportunity to change them!</p></div></div></section></div></div><section class="elementor-element elementor-element-101ac368 elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-inner-section" data-id="101ac368" data-element_type="section"><div class="elementor-container elementor-column-gap-default"><div class="elementor-row"><div class="aux-parallax-section elementor-element elementor-element-433f159a elementor-column elementor-col-100 elementor-inner-column" data-id="433f159a" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-215fec76 aux-appear-watch-animation aux-scale-up elementor-widget__width-auto elementor-widget-mobile__width-inherit elementor-widget elementor-widget-aux_button" data-id="215fec76" data-element_type="widget" data-widget_type="aux_button.default"><div class="elementor-widget-container">
<a href="https://epi-age.com/product/epiaging-kit/" target="_self"
   class="aux-button aux-large aux-black aux-curve aux-none aux-uppercase aux-icon-left"><span
        class="aux-overlay"></span><span
        class="aux-text">BUY NOW</span></a></div></div><div class="elementor-element elementor-element-4d427c67 aux-appear-watch-animation aux-scale-up elementor-widget__width-auto elementor-widget-mobile__width-inherit elementor-widget elementor-widget-aux_button" data-id="4d427c67" data-element_type="widget" data-widget_type="aux_button.default"><div class="elementor-widget-container">
<a href="..\how-it-works\index.htm" target="_self"
   class="aux-button aux-large aux-black aux-curve aux-outline aux-uppercase aux-icon-left"><span
        class="aux-overlay"></span><span
        class="aux-text">HOW IT WORKS</span></a></div></div></div></div></div></div></div></section></div></div></div><div class="aux-parallax-section elementor-element elementor-element-3a41acf8 elementor-column elementor-col-66 elementor-top-column" data-id="3a41acf8" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-533a0588 elementor-widget elementor-widget-image" data-id="533a0588" data-element_type="widget" data-widget_type="image.default"><div class="elementor-widget-container"><div class="elementor-image">
<img width="768" height="768" src="..\wp-content\uploads\2019\09\epiaging-768x768.jpg"
     class="attachment-medium_large size-medium_large" alt="Epiaging test kit"
     srcset="..\wp-content\uploads\2019\09\epiaging-768x768.jpg 768w, ..\wp-content\uploads\2019\09\epiaging-150x150.jpg 150w, ..\wp-content\uploads\2019\09\epiaging-300x300.jpg 300w, ..\wp-content\uploads\2019\09\epiaging-600x600.jpg 600w, ..\wp-content\uploads\2019\09\epiaging-100x100.jpg 100w, ..\wp-content\uploads\2019\09\epiaging.jpg 970w"
     sizes="(max-width: 768px) 100vw, 768px"></div></div></div></div></div></div></div></div></section></div></div></div></section><section id="elementor-library-3" class="widget-container widget_elementor-library"><div data-elementor-type="section" data-elementor-id="518" class="elementor elementor-518" data-elementor-settings="[]"><div class="elementor-inner"><div class="elementor-section-wrap"><section class="elementor-element elementor-element-c2c595d elementor-section-stretched aux-app-subscribe-section elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-section elementor-top-section" data-id="c2c595d" data-element_type="section" data-settings="{&quot;stretch_section&quot;:&quot;section-stretched&quot;,&quot;background_background&quot;:&quot;classic&quot;,&quot;shape_divider_bottom&quot;:&quot;waves&quot;,&quot;shape_divider_bottom_negative&quot;:&quot;yes&quot;}"><div class="elementor-shape elementor-shape-bottom" data-negative="true">
<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 1000 100" preserveaspectratio="none">
    <path class="elementor-shape-fill" d="M790.5,93.1c-59.3-5.3-116.8-18-192.6-50c-29.6-12.7-76.9-31-100.5-35.9c-23.6-4.9-52.6-7.8-75.5-5.3
c-10.2,1.1-22.6,1.4-50.1,7.4c-27.2,6.3-58.2,16.6-79.4,24.7c-41.3,15.9-94.9,21.9-134,22.6C72,58.2,0,25.8,0,25.8V100h1000V65.3
c0,0-51.5,19.4-106.2,25.7C839.5,97,814.1,95.2,790.5,93.1z"></path>
</svg>
</div><div class="elementor-container elementor-column-gap-default"><div class="elementor-row"><div class="aux-parallax-section elementor-element elementor-element-bd48bb3 elementor-column elementor-col-50 elementor-top-column" data-id="bd48bb3" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-884190e elementor-widget elementor-widget-aux_modern_heading" data-id="884190e" data-element_type="widget" data-widget_type="aux_modern_heading.default"><div class="elementor-widget-container"><section class="aux-widget-modern-heading"><div class="aux-widget-inner "><h2 class="aux-modern-heading-primary">SUBSCRIBE</h2><div class="aux-modern-heading-description"><p>Get Our Exclusive Offers and News</p></div></div></section></div></div></div></div></div><div class="aux-parallax-section elementor-element elementor-element-6583f7e elementor-column elementor-col-50 elementor-top-column" data-id="6583f7e" data-element_type="column"><div class="elementor-column-wrap elementor-element-populated"><div class="elementor-widget-wrap"><div class="elementor-element elementor-element-a7633f8 fc_signup elementor-widget elementor-widget-shortcode" data-id="a7633f8" data-element_type="widget" data-widget_type="shortcode.default"><div class="elementor-widget-container"><div class="elementor-shortcode"><div class="et_bloom_inline_form et_bloom_optin et_bloom_make_form_visible et_bloom_optin_2" style="display: none;"><div class="et_bloom_form_container et_bloom_rounded_corners et_bloom_form_text_dark et_bloom_form_bottom et_bloom_inline_1_field"><div class="et_bloom_form_container_wrapper clearfix"><div class="et_bloom_header_outer"><div class="et_bloom_form_header et_bloom_header_text_dark"></div></div><div class="et_bloom_form_content et_bloom_1_field et_bloom_bottom_inline"><form method="post" class="clearfix"><div class="et_bloom_fields"><p class="et_bloom_popup_input et_bloom_subscribe_email">
<input placeholder="Email"></p>
<button data-optin_id="optin_2" data-service="mailchimp" data-list_id="909fa4bfc2" data-page_id="110"
        data-account="info@epiage.ca" data-ip_address="true" class="et_bloom_submit_subscription"><span
        class="et_bloom_subscribe_loader"></span> <span class="et_bloom_button_text et_bloom_button_text_color_light">SUBMIT</span>
</button>
</div></form><div class="et_bloom_success_container"> <span
        class="et_bloom_success_checkmark"></span></div><h2 class="et_bloom_success_message">You have Successfully Subscribed!</h2></div></div>
<span class="et_bloom_close_button"></span></div></div></div></div></div></div></div></div></div></div></section></div></div></div></section></div></div></div></aside><aside class="subfooter aux-subfooter aux-dark"><div class="aux-wrapper"><div class="aux-container aux-fold"><div class="aux-row"><div class="aux-widget-area aux-1-4 aux-tb-3 aux-mb-1"><section id="media_image-3" class="widget-container widget_media_image _ph_"><a href="..\index.htm"><img width="100" height="100" src="..\wp-content\uploads\2019\09\epiage-logo-100x100.png" class="image wp-image-88 attachment-100x100 size-100x100" alt="MTL Epitherapeutics" style="max-width: 100%; height: auto;" srcset="..\wp-content\uploads\2019\09\epiage-logo-100x100.png 100w, ..\wp-content\uploads\2019\09\epiage-logo-150x150.png 150w, ..\wp-content\uploads\2019\09\epiage-logo-300x300.png 300w, ..\wp-content\uploads\2019\09\epiage-logo.png 512w" sizes="(max-width: 100px) 100vw, 100px"></a></section><section id="text-3" class="widget-container widget_text _ph_"><div class="textwidget"><p><strong>HKG Epitherapeutics</strong></p><p>A Hong Kong company, dedicated to harnessing the untapped power and possibilities of Epigenetics.</p><p><strong>Discover your biological age through DNA methylation.</strong></p></div></section></div><div class="aux-widget-area aux-1-4 aux-tb-3 aux-mb-1"><section id="text-5" class="widget-container widget_text _ph_"><h3 class="widget-title">Contact Us</h3><div class="textwidget"><p><strong>TOLL FREE:</strong><br>
<a href="tel:+1-844-384-4564" target="_blank" rel="noopener noreferrer">+1 844-384-4564</a></p><p><strong>EMAIL:</strong><br>
<a href="..\cdn-cgi\l\email-protection.htm#076e6961684762776e2a6660622964686a" target="_blank"
   rel="noopener noreferrer"><span class="__cf_email__" data-cfemail="ec85828a83ac899c85c18d8b89c28f8381">[email&#160;protected]</span></a></p><p><strong>ADDRESS:</strong></p><p style="font-size: 0.85em; line-height: 1.5em; margin-top: -1em;">HKG epiTherapeutics Limited<br> Unit 613, 6/F Biotech Centre 2<br> 11 Science Park West Avenue<br> Hong Kong Science Park<br> Shatin, N.T., Hong Kong</p></div></section><section id="aux_socials_list-5" class="widget-container aux-widget-socials aux-parent-au9062b4d7 widget-container widget_aux_socials_list _ph_" style=""><section class="widget-socials aux-socials-container aux-horizontal aux-extra-large"><ul class="aux-social-list"><li><a class="facebook" href="https://www.facebook.com/epiageMontreal/" target="_blank"><span class="auxicon-facebook"></span></a></li><li><a class="instagram" href="https://www.instagram.com/epiagemontreal/" target="_blank"><span class="auxicon-instagram"></span></a></li></ul></section></section></div><div class="aux-widget-area aux-1-4 aux-tb-3 aux-mb-1"><section id="woocommerce_products-3" class="widget-container woocommerce widget_products _ph_"><h3 class="widget-title">Products</h3><ul class="product_list_widget"><li>
<a href="..\product\epiage\index.htm"> <img width="300" height="300"
                                            src="..\wp-content\uploads\2019\09\epiaging-300x300.jpg"
                                            class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                                            alt="Epiaging test kit"
                                            srcset="..\wp-content\uploads\2019\09\epiaging-300x300.jpg 300w, ..\wp-content\uploads\2019\09\epiaging-150x150.jpg 150w, ..\wp-content\uploads\2019\09\epiaging-768x768.jpg 768w, ..\wp-content\uploads\2019\09\epiaging-600x600.jpg 600w, ..\wp-content\uploads\2019\09\epiaging-100x100.jpg 100w, ..\wp-content\uploads\2019\09\epiaging.jpg 970w"
                                            sizes="(max-width: 300px) 100vw, 300px"> <span
        class="product-title">epiAge</span> </a>
<del><span class="woocommerce-Price-amount amount"><span
        class="woocommerce-Price-currencySymbol">&#36;</span>191.00</span></del>
<ins><span class="woocommerce-Price-amount amount"><span
        class="woocommerce-Price-currencySymbol">&#36;</span>99.00</span></ins>
</li><li> <a href="..\product\episame\index.htm"> <img width="300" height="300"
                                                       src="..\wp-content\uploads\2019\09\sam2-300x300.png"
                                                       class="attachment-woocommerce_thumbnail size-woocommerce_thumbnail"
                                                       alt=""
                                                       srcset="..\wp-content\uploads\2019\09\sam2-300x300.png 300w, ..\wp-content\uploads\2019\09\sam2-150x150.png 150w, ..\wp-content\uploads\2019\09\sam2-768x768.png 768w, ..\wp-content\uploads\2019\09\sam2-100x100.png 100w"
                                                       sizes="(max-width: 300px) 100vw, 300px"> <span
        class="product-title">epiSAMe</span> </a> <span class="woocommerce-Price-amount amount"><span
        class="woocommerce-Price-currencySymbol">&#36;</span>42.00</span></li></ul></section><section id="text-10" class="widget-container widget_text _ph_"><div class="textwidget"><p><a href="https://itunes.apple.com/hk/app/epiaging/id1463134651?l=en&amp;mt=8" target="_blank" rel="noopener noreferrer"><img class="alignnone wp-image-2136 " role="img" src="..\files\2019\09\epiage-test-download.svg" alt="" width="182" height="61"></a></p><p><a href="https://play.google.com/store/apps/details?id=com.nxapp&amp;hl=en"><img class="alignleft wp-image-2137" role="img" src="..\files\2019\09\google-play.svg" alt="google play" width="181" height="57"></a></p></div></section></div><div class="aux-widget-area aux-1-4 aux-tb-3 aux-mb-1"><section id="nav_menu-5" class="widget-container widget_nav_menu _ph_"><h3 class="widget-title">Help</h3><div class="menu-footer-en-container"><ul id="menu-footer-en" class="menu"><li id="menu-item-915" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-110 current_page_item menu-item-915"><a href="index.htm" aria-current="page">About</a></li><li id="menu-item-2177" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-2177"><a href="..\how-it-works\index.htm">How Does It Work?</a></li><li id="menu-item-913" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-913"><a href="..\faq\index.htm">FAQ</a></li><li id="menu-item-912" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-912"><a href="..\blog\index.htm">Blog</a></li><li id="menu-item-914" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-914"><a href="..\contact\index.htm">Contact Us</a></li></ul></div></section><section id="custom_html-4" class="widget_text widget-container widget_custom_html _ph_"><div class="textwidget custom-html-widget"><a href="https://compliancy-group.com/hipaa-compliance-verification" target="_blank" rel="noopener noreferrer"><img class="aligncenter wp-image-13813" style="text-align:left;" src="https://compliancy-group.com/wp-content/uploads/2016/08/HIPAA-Compliance-Verification.png" alt="HIPAA Compliance Verification" width="205" height="132"></a></div></section></div></div></div></div></aside><footer id="sitefooter" class="aux-site-footer"><div class="aux-wrapper aux-float-layout"><div class="aux-container aux-fold aux-float-wrapper"><div id="copyright" class="aux-copyright aux-start aux-middle "><small>© 2019 Epi Age. All rights reserved.
<span style="color:#878787;margin-left:10px;">Designed by <a style="color:#878787;" href="https://swanmedia.ca"
                                                             title="Swan Media"
                                                             alt="Swan Media">Swan Media</a></span></small></div><nav id="menu-footer-nav" class="footer-menu aux-end aux-middle aux-phone-off"><ul id="menu-footer-bottom" class="menu" data-type="horizontal"><li id="menu-item-1188" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1188">
<a href="..\terms-conditions\index.htm">Terms &#038;
    Conditions</a></li><li id="menu-item-1191" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-privacy-policy menu-item-1191">
<a href="..\privacy-policy\index.htm">Privacy
    Policy</a></li><li id="menu-item-1196" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1196">
<a href="..\refund-policy\index.htm">Refund
    Policy</a></li><li id="menu-item-1930" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1930">
<a href="..\disclaimer\index.htm">Disclaimer</a></li></ul></nav></div></div></footer></div><div class="aux-hidden-blocks"><section id="offmenu" class="aux-offcanvas-menu aux-pin-left"><div class="aux-panel-close"><div class="aux-close aux-cross-symbol aux-thick-medium"></div></div><div class="offcanvas-header"></div><div class="offcanvas-content"></div><div class="offcanvas-footer"></div></section><section id="offcart" class="aux-offcanvas-menu aux-offcanvas-cart aux-pin-left"><div class="aux-panel-close"><div class="aux-close aux-cross-symbol aux-thick-medium"></div></div><div class="offcanvas-header"> Shopping Basket</div><div class="aux-cart-wrapper aux-elegant-cart aux-offcart-content"></div></section><section id="fs-menu-search" class="aux-fs-popup aux-fs-menu-layout-center aux-indicator"><div class="aux-panel-close"><div class="aux-close aux-cross-symbol aux-thick-medium"></div></div><div class="aux-fs-menu"></div><div class="aux-fs-search"><div class="aux-search-section "><div class="aux-search-form "><form action="https://epi-age.com/" method="get">
<input type="text" class="aux-search-field" placeholder="Type here.." name="s"> <input type="submit"
                                                                                       class="aux-black aux-search-submit aux-uppercase"
                                                                                       value="Search"></form></div></div></div></section><section id="fs-search" class="aux-fs-popup aux-search-overlay "><div class="aux-panel-close"><div class="aux-close aux-cross-symbol aux-thick-medium"></div></div><div class="aux-search-field"><div class="aux-search-section aux-404-search"><div class="aux-search-form aux-iconic-search"><form action="https://epi-age.com/" method="get">
<input type="text" class="aux-search-field" placeholder="Search..." name="s">
<div class="aux-submit-icon-container auxicon-search-4 "><input type="submit" class="aux-iconic-search-submit"
                                                                value="Search"></div>
</form></div></div></div></section><div class="aux-scroll-top"></div></div><div class="aux-goto-top-btn aux-align-btn-right" data-animate-scroll="1"><div class="aux-hover-slide aux-arrow-nav aux-round aux-outline">
<span class="aux-overlay"></span> <span class="aux-svg-arrow aux-h-small-up"></span> <span
        class="aux-hover-arrow aux-svg-arrow aux-h-small-up aux-white"></span></div></div><div id="um_upload_single" style="display:none"></div><div id="um_view_photo" style="display:none"><a href="javascript:void(0);" data-action="um_remove_modal" class="um-modal-close"><i class="um-faicon-times"></i></a><div class="um-modal-body photo"><div class="um-modal-photo"></div></div></div><div class="et_social_pin_images_outer"><div class="et_social_pinterest_window"><div class="et_social_modal_header"><h3>Pin It on Pinterest</h3><span class="et_social_close"></span></div><div class="et_social_pin_images" data-permalink="https://epi-age.com/about/" data-title="About" data-post_id="110"></div></div></div><link rel='stylesheet' id='google-fonts-2-css' href='https://fonts.googleapis.com/css?family=Heebo%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2C400%2C400italic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic&#038;ver=5.3.2' type='text/css' media='all'>
<script data-cfasync="false" src="..\cdn-cgi\scripts\5c5dd728\cloudflare-static\email-decode.min.js"></script>
<script type='text/javascript'>/*  */
var monarchSettings = {
    "ajaxurl": "https:\/\/epi-age.com\/wp-admin\/admin-ajax.php",
    "pageurl": "https:\/\/epi-age.com\/about\/",
    "stats_nonce": "cc9f2e5365",
    "share_counts": "009cdf4651",
    "follow_counts": "0be21619a4",
    "total_counts": "880a50bde2",
    "media_single": "9a38e6e51e",
    "media_total": "34b275a4f9",
    "generate_all_window_nonce": "8994ef1dc1",
    "no_img_message": "No images available for sharing on this page"
};
/*  */</script>
<script type='text/javascript'>('fetch' in window) || document.write('<script src="https://epi-age.com/wp-includes/js/dist/vendor/wp-polyfill-fetch.min.js?ver=3.0.0"></scr' + 'ipt>');
(document.contains) || document.write('<script src="https://epi-age.com/wp-includes/js/dist/vendor/wp-polyfill-node-contains.min.js?ver=3.26.0-0"></scr' + 'ipt>');
(window.FormData && window.FormData.prototype.keys) || document.write('<script src="https://epi-age.com/wp-includes/js/dist/vendor/wp-polyfill-formdata.min.js?ver=3.0.12"></scr' + 'ipt>');
(Element.prototype.matches && Element.prototype.closest) || document.write('<script src="https://epi-age.com/wp-includes/js/dist/vendor/wp-polyfill-element-closest.min.js?ver=2.0.2"></scr' + 'ipt>');</script>
<script type='text/javascript'>/*  */
var um_scripts = {"nonce": "64127aa74f"};
/*  */</script>
<script type='text/javascript'>/*  */
var bloomSettings = {
    "ajaxurl": "https:\/\/epi-age.com\/wp-admin\/admin-ajax.php",
    "pageurl": "https:\/\/epi-age.com\/about\/",
    "stats_nonce": "ccf07f96a1",
    "subscribe_nonce": "254c90398b",
    "is_user_logged_in": "not_logged"
};
/*  */</script>
<script type='text/javascript'>var ElementorProFrontendConfig = {
    "ajaxurl": "https:\/\/epi-age.com\/wp-admin\/admin-ajax.php",
    "nonce": "b291ff5a7a",
    "shareButtonsNetworks": {
        "facebook": {"title": "Facebook", "has_counter": true},
        "twitter": {"title": "Twitter"},
        "google": {"title": "Google+", "has_counter": true},
        "linkedin": {"title": "LinkedIn", "has_counter": true},
        "pinterest": {"title": "Pinterest", "has_counter": true},
        "reddit": {"title": "Reddit", "has_counter": true},
        "vk": {"title": "VK", "has_counter": true},
        "odnoklassniki": {"title": "OK", "has_counter": true},
        "tumblr": {"title": "Tumblr"},
        "delicious": {"title": "Delicious"},
        "digg": {"title": "Digg"},
        "skype": {"title": "Skype"},
        "stumbleupon": {"title": "StumbleUpon", "has_counter": true},
        "telegram": {"title": "Telegram"},
        "pocket": {"title": "Pocket", "has_counter": true},
        "xing": {"title": "XING", "has_counter": true},
        "whatsapp": {"title": "WhatsApp"},
        "email": {"title": "Email"},
        "print": {"title": "Print"}
    },
    "menu_cart": {
        "cart_page_url": "https:\/\/epi-age.com\/cart\/",
        "checkout_page_url": "https:\/\/epi-age.com\/checkout\/"
    },
    "facebook_sdk": {"lang": "en_US", "app_id": ""}
};</script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e6b55a806c71d63e1bc666f20d14c863.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_f583af4141381bc23d37b3e29069466f.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_8874666630ba6e78022871d25d2b923f.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_77c74b07c563cccfbb9167463de8cc40.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_db9d7dc42fc9a7ced399ca6b6f2ebd30.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_73cce3d1c1f448cba6c5e70afcfc9231.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_a832f860d28b8d2ce8bc5693725ae3f2.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_8682c6f09856c025b619fe00b992696b.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_6aa38b682489cacf5e333d68f2b9b0ac.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e78518ad1b2ea7348b7f351396ac471c.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_940518a0dc4ec83e4b953ce351e70133.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_9d0c231d7fff1819ace3ff298beff2f4.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_b38844350878b47366f52668927c7667.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_6a22ad475b237088349159b87fb44c3d.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_fa32eef47aab37cd50b60dda92839745.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_f188485e2a39112ad8d4aeef1e6bd999.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_1054e54399655c8691bc359d7c38802f.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_0fea02c5bb1cbacdcde81a82a302cc17.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_c3c5f4f9827aaee504cc9ee7c724e28f.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_1645890f1c97a420e33a5a50eb0ef76a.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_8d9a8981b670fd8a4362c10db6a27a2a.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_4af5ed365af01a3bfa91bddea0bbfb08.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_be0a562d7b2c8fd922dcb59071766ecc.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e339b5e5548707e53801cd8efe693f21.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_71417f34d16a41e2ec4647e9a9a7bda3.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_c83e680543b363d17084de03bb080ccb.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_c882d015729a6ed5212be27e894bff3c.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_856194da1fc15d800c656c6e6959934a.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_84d6df2d0f4f326a25cb93d3802be305.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_160acd6b7d1ae4e72d3b66a8fa9f0509.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_7d5e0beac7602b390609886d432a36a8.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_c39dfffa472bb7e479db590a96190a2f.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_3c78f352e052979d123f84ef3a833307.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_d3d09761085cf7948353d31afcd6225b.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_bfe12e073f3fc85aab5e74114b9b13c0.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_a6141b3cf15681763ea916255a29ad99.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e8ef994e6433edde88f56d1a71e4562c.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_8bbfa8d3a36edd48c3de6e71793697c0.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_dff35e2807109247560989277e09a9b3.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_ae7b421ebff27d577fdc5c53fa37679a.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_0027cdf437d93807f41569f84b7f585b.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_97dd4e020eab4da88f7416707aecfc10.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_2c717a893ca5b10e593f1eb89e58c834.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_dffa61f701c169d9522fa85093c7df1f.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_2c96919ee5b7b218f5827addb1af65bc.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_af54d1271825e51c5ef0b0d3fe5ae0fe.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_ca19112c9c5e175a8ce35cf1f6c1e201.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_57141347592e693a19931f8a68440836.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_b4ba6e2886469427fba48baf874761c5.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e9400e13e7a55baeb2465baf13e2dcf5.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e9e2cb54589a7ef5871575743ad75f78.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_7789adb4bc6140773f6b3d6bb83ebcc5.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_ab03c59a31486c7335b87747643c69ff.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_0bb26a4ba16d39d3f91caeb2463a619d.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_92ead9f39629245b71d58c2d37fd9bde.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_fa4d883b334006a8d90c3ca75f2bba29.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_16e736c287bfac1b0ae56a323b12c05a.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_ec3bba347ebb6acd14ce5397f4af4875.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_9e9136cc4824d748e2e1dfe9741da80a.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_34fadb2b29f7d661fa73cf406d81be25.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_7b3813ab7d18f75be86bf49fca50313c.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_4982d0cf0fbda6bd88a0f646d4f9bf68.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_3b7a1beadd6e6badf60493341975b25d.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_be09a3499057869560bdd1c5e69d0266.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_9b8d78fc96947ce9b2ce93ddd3980e12.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_59ae0a8bd027c82a647515ca74e4455c.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_9788b25784f72b690a597dc6ea6fdd84.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_0e2805266bd9a05fe9ead86741029574.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_a922d5cc3917706a9392911bf4ad24cd.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_4b38f93b49c2fd7d0445b4c5d9e402ac.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_0a766b13910ec7670cec7f44ebc3cee3.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_cc506ddd1e38aec1c97938d45878bfa3.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_e3ec716ff469fa9f8085c1f94607c83d.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_ceb0e403b53b87bbc31bf9994ed9bc7b.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_3f2d6a201c3ab355f918a4e6314eddda.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_369e31bdfcbe9a18efa8899acaa9dee8.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_51c823c9ea319f3fbdda6fe8bcee3102.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_7d9ef2365718ef5c47b1712e3419a674.js"></script>
<script type="text/javascript"
        src="..\wp-content\cache\breeze-minification\js\breeze_f64495d33073980e95b16340aaa8a569.js"></script>
<script type="text/javascript">window.NREUM || (NREUM = {});
NREUM.info = {
    "beacon": "bam.nr-data.net",
    "licenseKey": "9f9121d6e0",
    "applicationID": "394099851",
    "transactionName": "ZgNWbEVVD0ZUUExRWV9JdVtDXQ5bGkNZX1M=",
    "queueTime": 0,
    "applicationTime": 2108,
    "atts": "SkRVGg1PHEg=",
    "errorBeacon": "bam.nr-data.net",
    "agent": ""
}</script>
</body></html>