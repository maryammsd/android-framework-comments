graph [
  directed 1
  node [
    id 0
    label "java.net.HttpURLConnection"
    type "class"
    comment "&#10; * A URLConnection with support for HTTP-specific features. See&#10; * <A HREF=&#34;http://www.w3.org/pub/WWW/Protocols/&#34;> the spec </A> for&#10; * details.&#10; * <p>&#10; *&#10; * <p>Uses of this class follow a pattern:&#10; * <ol>&#10; *   <li>Obtain a new {@code HttpURLConnection} by calling {@link&#10; *       URL#openConnection() URL.openConnection()} and casting the result to&#10; *       {@code HttpURLConnection}.&#10; *   <li>Prepare the request. The primary property of a request is its URI.&#10; *       Request headers may also include metadata such as credentials, preferred&#10; *       content types, and session cookies.&#10; *   <li>Optionally upload a request body. Instances must be configured with&#10; *       {@link #setDoOutput(boolean) setDoOutput(true)} if they include a&#10; *       request body. Transmit data by writing to the stream returned by {@link&#10; *       #getOutputStream()}.&#10; *   <li>Read the response. Response headers typically include metadata such as&#10; *       the response body's content type and length, modified dates and session&#10; *       cookies. The response body may be read from the stream returned by {@link&#10; *       #getInputStream()}. If the response has no body, that method returns an&#10; *       empty stream.&#10; *   <li>Disconnect. Once the response body has been read, the {@code&#10; *       HttpURLConnection} should be closed by calling {@link #disconnect()}.&#10; *       Disconnecting releases the resources held by a connection so they may&#10; *       be closed or reused.&#10; * </ol>&#10; *&#10; * <p>For example, to retrieve the webpage at {@code http://www.android.com/}:&#10; * <pre>   {@code&#10; *   URL url = new URL(&#34;http://www.android.com/&#34;);&#10; *   HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();&#10; *   try {&#10; *     InputStream in = new BufferedInputStream(urlConnection.getInputStream());&#10; *     readStream(in);&#10; *   } finally {&#10; *     urlConnection.disconnect();&#10; *   }&#10; * }</pre>&#10; *&#10; * <h3>Secure Communication with HTTPS</h3>&#10; * Calling {@link URL#openConnection()} on a URL with the &#34;https&#34;&#10; * scheme will return an {@code HttpsURLConnection}, which allows for&#10; * overriding the default {@link javax.net.ssl.HostnameVerifier&#10; * HostnameVerifier} and {@link javax.net.ssl.SSLSocketFactory&#10; * SSLSocketFactory}. An application-supplied {@code SSLSocketFactory}&#10; * created from an {@link javax.net.ssl.SSLContext SSLContext} can&#10; * provide a custom {@link javax.net.ssl.X509TrustManager&#10; * X509TrustManager} for verifying certificate chains and a custom&#10; * {@link javax.net.ssl.X509KeyManager X509KeyManager} for supplying&#10; * client certificates. See {@link javax.net.ssl.HttpsURLConnection&#10; * HttpsURLConnection} for more details.&#10; *&#10; * <h3>Response Handling</h3>&#10; * {@code HttpURLConnection} will follow up to five HTTP redirects. It will&#10; * follow redirects from one origin server to another. This implementation&#10; * doesn't follow redirects from HTTPS to HTTP or vice versa.&#10; *&#10; * <p>If the HTTP response indicates that an error occurred, {@link&#10; * #getInputStream()} will throw an {@link IOException}. Use {@link&#10; * #getErrorStream()} to read the error response. The headers can be read in&#10; * the normal way using {@link #getHeaderFields()},&#10; *&#10; * <h3>Posting Content</h3>&#10; * To upload data to a web server, configure the connection for output using&#10; * {@link #setDoOutput(boolean) setDoOutput(true)}.&#10; *&#10; * <p>For best performance, you should call either {@link&#10; * #setFixedLengthStreamingMode(int)} when the body length is known in advance,&#10; * or {@link #setChunkedStreamingMode(int)} when it is not. Otherwise {@code&#10; * HttpURLConnection} will be forced to buffer the complete request body in&#10; * memory before it is transmitted, wasting (and possibly exhausting) heap and&#10; * increasing latency.&#10; *&#10; * <p>For example, to perform an upload: <pre>   {@code&#10; *   HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();&#10; *   try {&#10; *     urlConnection.setDoOutput(true);&#10; *     urlConnection.setChunkedStreamingMode(0);&#10; *&#10; *     OutputStream out = new BufferedOutputStream(urlConnection.getOutputStream());&#10; *     writeStream(out);&#10; *&#10; *     InputStream in = new BufferedInputStream(urlConnection.getInputStream());&#10; *     readStream(in);&#10; *   } finally {&#10; *     urlConnection.disconnect();&#10; *   }&#10; * }</pre>&#10; *&#10; * <h3>Performance</h3>&#10; * The input and output streams returned by this class are <strong>not&#10; * buffered</strong>. Most callers should wrap the returned streams with {@link&#10; * java.io.BufferedInputStream BufferedInputStream} or {@link&#10; * java.io.BufferedOutputStream BufferedOutputStream}. Callers that do only bulk&#10; * reads or writes may omit buffering.&#10; *&#10; * <p>When transferring large amounts of data to or from a server, use streams&#10; * to limit how much data is in memory at once. Unless you need the entire&#10; * body to be in memory at once, process it as a stream (rather than storing&#10; * the complete body as a single byte array or string).&#10; *&#10; * <p>To reduce latency, this class may reuse the same underlying {@code Socket}&#10; * for multiple request/response pairs. As a result, HTTP connections may be&#10; * held open longer than necessary. Calls to {@link #disconnect()} may return&#10; * the socket to a pool of connected sockets.&#10; *&#10; * <p>By default, this implementation of {@code HttpURLConnection} requests that&#10; * servers use gzip compression and it automatically decompresses the data for&#10; * callers of {@link #getInputStream()}. The Content-Encoding and Content-Length&#10; * response headers are cleared in this case. Gzip compression can be disabled by&#10; * setting the acceptable encodings in the request header: <pre>   {@code&#10; *   urlConnection.setRequestProperty(&#34;Accept-Encoding&#34;, &#34;identity&#34;);&#10; * }</pre>&#10; *&#10; * <p>Setting the Accept-Encoding request header explicitly disables automatic&#10; * decompression and leaves the response headers intact; callers must handle&#10; * decompression as needed, according to the Content-Encoding header of the&#10; * response.&#10; *&#10; * <p>{@link #getContentLength()} returns the number of bytes transmitted and&#10; * cannot be used to predict how many bytes can be read from&#10; * {@link #getInputStream()} for compressed streams. Instead, read that stream&#10; * until it is exhausted, i.e. when {@link InputStream#read} returns -1.&#10; *&#10; * <h3>Handling Network Sign-On</h3>&#10; * Some Wi-Fi networks block Internet access until the user clicks through a&#10; * sign-on page. Such sign-on pages are typically presented by using HTTP&#10; * redirects. You can use {@link #getURL()} to test if your connection has been&#10; * unexpectedly redirected. This check is not valid until <strong>after</strong>&#10; * the response headers have been received, which you can trigger by calling&#10; * {@link #getHeaderFields()} or {@link #getInputStream()}. For example, to&#10; * check that a response was not redirected to an unexpected host:&#10; * <pre>   {@code&#10; *   HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();&#10; *   try {&#10; *     InputStream in = new BufferedInputStream(urlConnection.getInputStream());&#10; *     if (!url.getHost().equals(urlConnection.getURL().getHost())) {&#10; *       // we were redirected! Kick the user out to the browser to sign on?&#10; *     }&#10; *     ...&#10; *   } finally {&#10; *     urlConnection.disconnect();&#10; *   }&#10; * }</pre>&#10; *&#10; * <h3>HTTP Authentication</h3>&#10; * {@code HttpURLConnection} supports <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc2617&#34;>HTTP basic authentication</a>. Use&#10; * {@link Authenticator} to set the VM-wide authentication handler:&#10; * <pre>   {@code&#10; *   Authenticator.setDefault(new Authenticator() {&#10; *     protected PasswordAuthentication getPasswordAuthentication() {&#10; *       return new PasswordAuthentication(username, password.toCharArray());&#10; *     }&#10; *   });&#10; * }</pre>&#10; * Unless paired with HTTPS, this is <strong>not</strong> a secure mechanism for&#10; * user authentication. In particular, the username, password, request and&#10; * response are all transmitted over the network without encryption.&#10; *&#10; * <h3>Sessions with Cookies</h3>&#10; * To establish and maintain a potentially long-lived session between client&#10; * and server, {@code HttpURLConnection} includes an extensible cookie manager.&#10; * Enable VM-wide cookie management using {@link CookieHandler} and {@link&#10; * CookieManager}: <pre>   {@code&#10; *   CookieManager cookieManager = new CookieManager();&#10; *   CookieHandler.setDefault(cookieManager);&#10; * }</pre>&#10; * By default, {@code CookieManager} accepts cookies from the <a&#10; * href=&#34;http://www.w3.org/Protocols/rfc2616/rfc2616-sec1.html&#34;>origin&#10; * server</a> only. Two other policies are included: {@link&#10; * CookiePolicy#ACCEPT_ALL} and {@link CookiePolicy#ACCEPT_NONE}. Implement&#10; * {@link CookiePolicy} to define a custom policy.&#10; *&#10; * <p>The default {@code CookieManager} keeps all accepted cookies in memory. It&#10; * will forget these cookies when the VM exits. Implement {@link CookieStore} to&#10; * define a custom cookie store.&#10; *&#10; * <p>In addition to the cookies set by HTTP responses, you may set cookies&#10; * programmatically. To be included in HTTP request headers, cookies must have&#10; * the domain and path properties set.&#10; *&#10; * <p>By default, new instances of {@code HttpCookie} work only with servers&#10; * that support <a href=&#34;http://www.ietf.org/rfc/rfc2965.txt&#34;>RFC 2965</a>&#10; * cookies. Many web servers support only the older specification, <a&#10; * href=&#34;http://www.ietf.org/rfc/rfc2109.txt&#34;>RFC 2109</a>. For compatibility&#10; * with the most web servers, set the cookie version to 0.&#10; *&#10; * <p>For example, to receive {@code www.twitter.com} in French: <pre>   {@code&#10; *   HttpCookie cookie = new HttpCookie(&#34;lang&#34;, &#34;fr&#34;);&#10; *   cookie.setDomain(&#34;twitter.com&#34;);&#10; *   cookie.setPath(&#34;/&#34;);&#10; *   cookie.setVersion(0);&#10; *   cookieManager.getCookieStore().add(new URI(&#34;http://twitter.com/&#34;), cookie);&#10; * }</pre>&#10; *&#10; * <h3>HTTP Methods</h3>&#10; * <p>{@code HttpURLConnection} uses the {@code GET} method by default. It will&#10; * use {@code POST} if {@link #setDoOutput setDoOutput(true)} has been called.&#10; * Other HTTP methods ({@code OPTIONS}, {@code HEAD}, {@code PUT}, {@code&#10; * DELETE} and {@code TRACE}) can be used with {@link #setRequestMethod}.&#10; *&#10; * <h3>Proxies</h3>&#10; * By default, this class will connect directly to the <a&#10; * href=&#34;http://www.w3.org/Protocols/rfc2616/rfc2616-sec1.html&#34;>origin&#10; * server</a>. It can also connect via an {@link Proxy.Type#HTTP HTTP} or {@link&#10; * Proxy.Type#SOCKS SOCKS} proxy. To use a proxy, use {@link&#10; * URL#openConnection(Proxy) URL.openConnection(Proxy)} when creating the&#10; * connection.&#10; *&#10; * <h3>IPv6 Support</h3>&#10; * <p>This class includes transparent support for IPv6. For hosts with both IPv4&#10; * and IPv6 addresses, it will attempt to connect to each of a host's addresses&#10; * until a connection is established.&#10; *&#10; * <h3>Response Caching</h3>&#10; * Android 4.0 (Ice Cream Sandwich, API level 15) includes a response cache. See&#10; * {@code android.net.http.HttpResponseCache} for instructions on enabling HTTP&#10; * caching in your application.&#10; *&#10; * <h3>Avoiding Bugs In Earlier Releases</h3>&#10; * Prior to Android 2.2 (Froyo), this class had some frustrating bugs. In&#10; * particular, calling {@code close()} on a readable {@code InputStream} could&#10; * <a href=&#34;http://code.google.com/p/android/issues/detail?id=2939&#34;>poison the&#10; * connection pool</a>. Work around this by disabling connection pooling:&#10; * <pre>   {@code&#10; * private void disableConnectionReuseIfNecessary() {&#10; *   // Work around pre-Froyo bugs in HTTP connection reuse.&#10; *   if (Integer.parseInt(Build.VERSION.SDK) < Build.VERSION_CODES.FROYO) {&#10; *     System.setProperty(&#34;http.keepAlive&#34;, &#34;false&#34;);&#10; *   }&#10; * }}</pre>&#10; *&#10; * <p>Each instance of {@code HttpURLConnection} may be used for one&#10; * request/response pair. Instances of this class are not thread safe.&#10; *&#10; * @see     java.net.HttpURLConnection#disconnect()&#10; * @since JDK1.1&#10; "
  ]
  node [
    id 1
    label "public String getHeaderFieldKey(int n)"
    type "method"
    comment "&#10;     * Returns the key for the {@code n}<sup>th</sup> header field.&#10;     * Some implementations may treat the {@code 0}<sup>th</sup>&#10;     * header field as special, i.e. as the status line returned by the HTTP&#10;     * server. In this case, {@link #getHeaderField(int) getHeaderField(0)} returns the status&#10;     * line, but {@code getHeaderFieldKey(0)} returns null.&#10;     *&#10;     * @param   n   an index, where {@code n >=0}.&#10;     * @return  the key for the {@code n}<sup>th</sup> header field,&#10;     *          or {@code null} if the key does not exist.&#10;     "
  ]
  node [
    id 2
    label "getHeaderField(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "public void setFixedLengthStreamingMode(int contentLength)"
    type "method"
    comment "&#10;     * This method is used to enable streaming of a HTTP request body&#10;     * without internal buffering, when the content length is known in&#10;     * advance.&#10;     * <p>&#10;     * An exception will be thrown if the application&#10;     * attempts to write more data than the indicated&#10;     * content-length, or if the application closes the OutputStream&#10;     * before writing the indicated amount.&#10;     * <p>&#10;     * When output streaming is enabled, authentication&#10;     * and redirection cannot be handled automatically.&#10;     * A HttpRetryException will be thrown when reading&#10;     * the response if authentication or redirection are required.&#10;     * This exception can be queried for the details of the error.&#10;     * <p>&#10;     * This method must be called before the URLConnection is connected.&#10;     * <p>&#10;     * <B>NOTE:</B> {@link #setFixedLengthStreamingMode(long)} is recommended&#10;     * instead of this method as it allows larger content lengths to be set.&#10;     *&#10;     * @param   contentLength The number of bytes which will be written&#10;     *          to the OutputStream.&#10;     *&#10;     * @throws  IllegalStateException if URLConnection is already connected&#10;     *          or if a different streaming mode is already enabled.&#10;     *&#10;     * @throws  IllegalArgumentException if a content length less than&#10;     *          zero is specified.&#10;     *&#10;     * @see     #setChunkedStreamingMode(int)&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 4
    label "setFixedLengthStreamingMode(long)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 5
    label "public void setFixedLengthStreamingMode(long contentLength)"
    type "method"
    comment "&#10;     * This method is used to enable streaming of a HTTP request body&#10;     * without internal buffering, when the content length is known in&#10;     * advance.&#10;     *&#10;     * <P> An exception will be thrown if the application attempts to write&#10;     * more data than the indicated content-length, or if the application&#10;     * closes the OutputStream before writing the indicated amount.&#10;     *&#10;     * <P> When output streaming is enabled, authentication and redirection&#10;     * cannot be handled automatically. A {@linkplain HttpRetryException} will&#10;     * be thrown when reading the response if authentication or redirection&#10;     * are required. This exception can be queried for the details of the&#10;     * error.&#10;     *&#10;     * <P> This method must be called before the URLConnection is connected.&#10;     *&#10;     * <P> The content length set by invoking this method takes precedence&#10;     * over any value set by {@link #setFixedLengthStreamingMode(int)}.&#10;     *&#10;     * @param  contentLength&#10;     *         The number of bytes which will be written to the OutputStream.&#10;     *&#10;     * @throws  IllegalStateException&#10;     *          if URLConnection is already connected or if a different&#10;     *          streaming mode is already enabled.&#10;     *&#10;     * @throws  IllegalArgumentException&#10;     *          if a content length less than zero is specified.&#10;     *&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 6
    label "setFixedLengthStreamingMode(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label "public void setChunkedStreamingMode(int chunklen)"
    type "method"
    comment "&#10;     * This method is used to enable streaming of a HTTP request body&#10;     * without internal buffering, when the content length is <b>not</b>&#10;     * known in advance. In this mode, chunked transfer encoding&#10;     * is used to send the request body. Note, not all HTTP servers&#10;     * support this mode.&#10;     * <p>&#10;     * When output streaming is enabled, authentication&#10;     * and redirection cannot be handled automatically.&#10;     * A HttpRetryException will be thrown when reading&#10;     * the response if authentication or redirection are required.&#10;     * This exception can be queried for the details of the error.&#10;     * <p>&#10;     * This method must be called before the URLConnection is connected.&#10;     *&#10;     * @param   chunklen The number of bytes to write in each chunk.&#10;     *          If chunklen is less than or equal to zero, a default&#10;     *          value will be used.&#10;     *&#10;     * @throws  IllegalStateException if URLConnection is already connected&#10;     *          or if a different streaming mode is already enabled.&#10;     *&#10;     * @see     #setFixedLengthStreamingMode(int)&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 8
    label "public String getHeaderField(int n)"
    type "method"
    comment "&#10;     * Returns the value for the {@code n}<sup>th</sup> header field.&#10;     * Some implementations may treat the {@code 0}<sup>th</sup>&#10;     * header field as special, i.e. as the status line returned by the HTTP&#10;     * server.&#10;     * <p>&#10;     * This method can be used in conjunction with the&#10;     * {@link #getHeaderFieldKey getHeaderFieldKey} method to iterate through all&#10;     * the headers in the message.&#10;     *&#10;     * @param   n   an index, where {@code n>=0}.&#10;     * @return  the value of the {@code n}<sup>th</sup> header field,&#10;     *          or {@code null} if the value does not exist.&#10;     * @see     java.net.HttpURLConnection#getHeaderFieldKey(int)&#10;     "
  ]
  node [
    id 9
    label "getHeaderFieldKey"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 10
    label "public static void setFollowRedirects(boolean set)"
    type "method"
    comment "&#10;     * Sets whether HTTP redirects  (requests with response code 3xx) should&#10;     * be automatically followed by this class.  True by default.  Applets&#10;     * cannot change this variable.&#10;     * <p>&#10;     * If there is a security manager, this method first calls&#10;     * the security manager's {@code checkSetFactory} method&#10;     * to ensure the operation is allowed.&#10;     * This could result in a SecurityException.&#10;     *&#10;     * @param set a {@code boolean} indicating whether or not&#10;     * to follow HTTP redirects.&#10;     * @exception  SecurityException  if a security manager exists and its&#10;     *             {@code checkSetFactory} method doesn't&#10;     *             allow the operation.&#10;     * @see        SecurityManager#checkSetFactory&#10;     * @see #getFollowRedirects()&#10;     "
  ]
  node [
    id 11
    label "public static boolean getFollowRedirects()"
    type "method"
    comment "&#10;     * Returns a {@code boolean} indicating&#10;     * whether or not HTTP redirects (3xx) should&#10;     * be automatically followed.&#10;     *&#10;     * @return {@code true} if HTTP redirects should&#10;     * be automatically followed, {@code false} if not.&#10;     * @see #setFollowRedirects(boolean)&#10;     "
  ]
  node [
    id 12
    label "public void setInstanceFollowRedirects(boolean followRedirects)"
    type "method"
    comment "&#10;     * Sets whether HTTP redirects (requests with response code 3xx) should&#10;     * be automatically followed by this {@code HttpURLConnection}&#10;     * instance.&#10;     * <p>&#10;     * The default value comes from followRedirects, which defaults to&#10;     * true.&#10;     *&#10;     * @param followRedirects a {@code boolean} indicating&#10;     * whether or not to follow HTTP redirects.&#10;     *&#10;     * @see    java.net.HttpURLConnection#instanceFollowRedirects&#10;     * @see #getInstanceFollowRedirects&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 13
    label "public boolean getInstanceFollowRedirects()"
    type "method"
    comment "&#10;     * Returns the value of this {@code HttpURLConnection}'s&#10;     * {@code instanceFollowRedirects} field.&#10;     *&#10;     * @return  the value of this {@code HttpURLConnection}'s&#10;     *          {@code instanceFollowRedirects} field.&#10;     * @see     java.net.HttpURLConnection#instanceFollowRedirects&#10;     * @see #setInstanceFollowRedirects(boolean)&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 14
    label "public void setRequestMethod(String method) throws ProtocolException"
    type "method"
    comment "&#10;     * Set the method for the URL request, one of:&#10;     * <UL>&#10;     *  <LI>GET&#10;     *  <LI>POST&#10;     *  <LI>HEAD&#10;     *  <LI>OPTIONS&#10;     *  <LI>PUT&#10;     *  <LI>DELETE&#10;     *  <LI>TRACE&#10;     * </UL> are legal, subject to protocol restrictions.  The default&#10;     * method is GET.&#10;     *&#10;     * @param method the HTTP method&#10;     * @exception ProtocolException if the method cannot be reset or if&#10;     *              the requested method isn't valid for HTTP.&#10;     * @exception SecurityException if a security manager is set and the&#10;     *              method is &#34;TRACE&#34;, but the &#34;allowHttpTrace&#34;&#10;     *              NetPermission is not granted.&#10;     * @see #getRequestMethod()&#10;     "
  ]
  node [
    id 15
    label "public String getRequestMethod()"
    type "method"
    comment "&#10;     * Get the request method.&#10;     * @return the HTTP request method&#10;     * @see #setRequestMethod(java.lang.String)&#10;     "
  ]
  node [
    id 16
    label "public int getResponseCode() throws IOException"
    type "method"
    comment "&#10;     * Gets the status code from an HTTP response message.&#10;     * For example, in the case of the following status lines:&#10;     * <PRE>&#10;     * HTTP/1.0 200 OK&#10;     * HTTP/1.0 401 Unauthorized&#10;     * </PRE>&#10;     * It will return 200 and 401 respectively.&#10;     * Returns -1 if no code can be discerned&#10;     * from the response (i.e., the response is not valid HTTP).&#10;     * @throws IOException if an error occurred connecting to the server.&#10;     * @return the HTTP Status-Code, or -1&#10;     "
  ]
  node [
    id 17
    label "public String getResponseMessage() throws IOException"
    type "method"
    comment "&#10;     * Gets the HTTP response message, if any, returned along with the&#10;     * response code from a server.  From responses like:&#10;     * <PRE>&#10;     * HTTP/1.0 200 OK&#10;     * HTTP/1.0 404 Not Found&#10;     * </PRE>&#10;     * Extracts the Strings &#34;OK&#34; and &#34;Not Found&#34; respectively.&#10;     * Returns null if none could be discerned from the responses&#10;     * (the result was not valid HTTP).&#10;     * @throws IOException if an error occurred connecting to the server.&#10;     * @return the HTTP response message, or {@code null}&#10;     "
  ]
  node [
    id 18
    label "public abstract void disconnect()"
    type "method"
    comment "&#10;     * Indicates that other requests to the server&#10;     * are unlikely in the near future. Calling disconnect()&#10;     * should not imply that this HttpURLConnection&#10;     * instance can be reused for other requests.&#10;     "
  ]
  node [
    id 19
    label "public abstract boolean usingProxy()"
    type "method"
    comment "&#10;     * Indicates if the connection is going through a proxy.&#10;     * @return a boolean indicating if the connection is&#10;     * using a proxy.&#10;     "
  ]
  node [
    id 20
    label "public Permission getPermission() throws IOException"
    type "method"
    comment "&#10;     * Returns a {@link SocketPermission} object representing the&#10;     * permission necessary to connect to the destination host and port.&#10;     *&#10;     * @exception IOException if an error occurs while computing&#10;     *            the permission.&#10;     *&#10;     * @return a {@code SocketPermission} object representing the&#10;     *         permission necessary to connect to the destination&#10;     *         host and port.&#10;     "
  ]
  node [
    id 21
    label "SocketPermission"
  ]
  node [
    id 22
    label "public InputStream getErrorStream()"
    type "method"
    comment "&#10;    * Returns the error stream if the connection failed&#10;    * but the server sent useful data nonetheless. The&#10;    * typical example is when an HTTP server responds&#10;    * with a 404, which will cause a FileNotFoundException&#10;    * to be thrown in connect, but the server sent an HTML&#10;    * help page with suggestions as to what to do.&#10;    *&#10;    * <p>This method will not cause a connection to be initiated.  If&#10;    * the connection was not connected, or if the server did not have&#10;    * an error while connecting or if the server had an error but&#10;    * no error data was sent, this method will return null. This is&#10;    * the default.&#10;    *&#10;    * @return an error stream if any, null if there have been no&#10;    * errors, the connection is not connected or the server sent no&#10;    * useful data.&#10;    "
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 0
    target 3
    type "child"
  ]
  edge [
    source 0
    target 5
    type "child"
  ]
  edge [
    source 0
    target 7
    type "child"
  ]
  edge [
    source 0
    target 8
    type "child"
  ]
  edge [
    source 0
    target 10
    type "child"
  ]
  edge [
    source 0
    target 11
    type "child"
  ]
  edge [
    source 0
    target 12
    type "child"
  ]
  edge [
    source 0
    target 13
    type "child"
  ]
  edge [
    source 0
    target 14
    type "child"
  ]
  edge [
    source 0
    target 15
    type "child"
  ]
  edge [
    source 0
    target 16
    type "child"
  ]
  edge [
    source 0
    target 17
    type "child"
  ]
  edge [
    source 0
    target 18
    type "child"
  ]
  edge [
    source 0
    target 19
    type "child"
  ]
  edge [
    source 0
    target 20
    type "child"
  ]
  edge [
    source 0
    target 22
    type "child"
  ]
  edge [
    source 1
    target 2
    type "link"
  ]
  edge [
    source 3
    target 4
    type "link"
  ]
  edge [
    source 5
    target 6
    type "link"
  ]
  edge [
    source 8
    target 9
    type "link"
  ]
  edge [
    source 20
    target 21
    type "link"
  ]
]
