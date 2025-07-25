graph [
  directed 1
  node [
    id 0
    label "java.net.URLConnection"
    type "class"
    comment "&#10; * The abstract class {@code URLConnection} is the superclass&#10; * of all classes that represent a communications link between the&#10; * application and a URL. Instances of this class can be used both to&#10; * read from and to write to the resource referenced by the URL. In&#10; * general, creating a connection to a URL is a multistep process:&#10; *&#10; * <center><table border=2 summary=&#34;Describes the process of creating a connection to a URL: openConnection() and connect() over time.&#34;>&#10; * <tr><th>{@code openConnection()}</th>&#10; *     <th>{@code connect()}</th></tr>&#10; * <tr><td>Manipulate parameters that affect the connection to the remote&#10; *         resource.</td>&#10; *     <td>Interact with the resource; query header fields and&#10; *         contents.</td></tr>&#10; * </table>&#10; * ----------------------------&#38;gt;&#10; * <br>time</center>&#10; *&#10; * <ol>&#10; * <li>The connection object is created by invoking the&#10; *     {@code openConnection} method on a URL.&#10; * <li>The setup parameters and general request properties are manipulated.&#10; * <li>The actual connection to the remote object is made, using the&#10; *    {@code connect} method.&#10; * <li>The remote object becomes available. The header fields and the contents&#10; *     of the remote object can be accessed.&#10; * </ol>&#10; * <p>&#10; * The setup parameters are modified using the following methods:&#10; * <ul>&#10; *   <li>{@code setAllowUserInteraction}&#10; *   <li>{@code setDoInput}&#10; *   <li>{@code setDoOutput}&#10; *   <li>{@code setIfModifiedSince}&#10; *   <li>{@code setUseCaches}&#10; * </ul>&#10; * <p>&#10; * and the general request properties are modified using the method:&#10; * <ul>&#10; *   <li>{@code setRequestProperty}&#10; * </ul>&#10; * <p>&#10; * Default values for the {@code AllowUserInteraction} and&#10; * {@code UseCaches} parameters can be set using the methods&#10; * {@code setDefaultAllowUserInteraction} and&#10; * {@code setDefaultUseCaches}.&#10; * <p>&#10; * Each of the above {@code set} methods has a corresponding&#10; * {@code get} method to retrieve the value of the parameter or&#10; * general request property. The specific parameters and general&#10; * request properties that are applicable are protocol specific.&#10; * <p>&#10; * The following methods are used to access the header fields and&#10; * the contents after the connection is made to the remote object:&#10; * <ul>&#10; *   <li>{@code getContent}&#10; *   <li>{@code getHeaderField}&#10; *   <li>{@code getInputStream}&#10; *   <li>{@code getOutputStream}&#10; * </ul>&#10; * <p>&#10; * Certain header fields are accessed frequently. The methods:&#10; * <ul>&#10; *   <li>{@code getContentEncoding}&#10; *   <li>{@code getContentLength}&#10; *   <li>{@code getContentType}&#10; *   <li>{@code getDate}&#10; *   <li>{@code getExpiration}&#10; *   <li>{@code getLastModifed}&#10; * </ul>&#10; * <p>&#10; * provide convenient access to these fields. The&#10; * {@code getContentType} method is used by the&#10; * {@code getContent} method to determine the type of the remote&#10; * object; subclasses may find it convenient to override the&#10; * {@code getContentType} method.&#10; * <p>&#10; * In the common case, all of the pre-connection parameters and&#10; * general request properties can be ignored: the pre-connection&#10; * parameters and request properties default to sensible values. For&#10; * most clients of this interface, there are only two interesting&#10; * methods: {@code getInputStream} and {@code getContent},&#10; * which are mirrored in the {@code URL} class by convenience methods.&#10; * <p>&#10; * More information on the request properties and header fields of&#10; * an {@code http} connection can be found at:&#10; * <blockquote><pre>&#10; * <a href=&#34;http://www.ietf.org/rfc/rfc2616.txt&#34;>http://www.ietf.org/rfc/rfc2616.txt</a>&#10; * </pre></blockquote>&#10; *&#10; * Invoking the {@code close()} methods on the {@code InputStream} or {@code OutputStream} of an&#10; * {@code URLConnection} after a request may free network resources associated with this&#10; * instance, unless particular protocol specifications specify different behaviours&#10; * for it.&#10; *&#10; * @author  James Gosling&#10; * @see     java.net.URL#openConnection()&#10; * @see     java.net.URLConnection#connect()&#10; * @see     java.net.URLConnection#getContent()&#10; * @see     java.net.URLConnection#getContentEncoding()&#10; * @see     java.net.URLConnection#getContentLength()&#10; * @see     java.net.URLConnection#getContentType()&#10; * @see     java.net.URLConnection#getDate()&#10; * @see     java.net.URLConnection#getExpiration()&#10; * @see     java.net.URLConnection#getHeaderField(int)&#10; * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10; * @see     java.net.URLConnection#getInputStream()&#10; * @see     java.net.URLConnection#getLastModified()&#10; * @see     java.net.URLConnection#getOutputStream()&#10; * @see     java.net.URLConnection#setAllowUserInteraction(boolean)&#10; * @see     java.net.URLConnection#setDefaultUseCaches(boolean)&#10; * @see     java.net.URLConnection#setDoInput(boolean)&#10; * @see     java.net.URLConnection#setDoOutput(boolean)&#10; * @see     java.net.URLConnection#setIfModifiedSince(long)&#10; * @see     java.net.URLConnection#setRequestProperty(java.lang.String, java.lang.String)&#10; * @see     java.net.URLConnection#setUseCaches(boolean)&#10; * @since   JDK1.0&#10; "
  ]
  node [
    id 1
    label "public static synchronized FileNameMap getFileNameMap()"
    type "method"
    comment "&#10;     * Returns a {@link FileNameMap} implementation suitable for guessing a&#10;     * content type based on a URL's &#34;file&#34; component.&#10;     *&#10;     * @see #guessContentTypeFromName(String)&#10;     * @see #setFileNameMap(java.net.FileNameMap)&#10;     *&#10;     "
  ]
  node [
    id 2
    label "FileNameMap"
  ]
  node [
    id 3
    label "public static void setFileNameMap(FileNameMap map)"
    type "method"
    comment "&#10;     * Sets the FileNameMap.&#10;     * <p>&#10;     * If there is a security manager, this method first calls&#10;     * the security manager's {@code checkSetFactory} method&#10;     * to ensure the operation is allowed.&#10;     * This could result in a SecurityException.&#10;     *&#10;     * @param map the FileNameMap to be set&#10;     * @exception  SecurityException  if a security manager exists and its&#10;     *             {@code checkSetFactory} method doesn't allow the operation.&#10;     * @see        SecurityManager#checkSetFactory&#10;     * @see #getFileNameMap()&#10;     * @since 1.2&#10;     "
  ]
  node [
    id 4
    label "public abstract void connect() throws IOException"
    type "method"
    comment "&#10;     * Opens a communications link to the resource referenced by this&#10;     * URL, if such a connection has not already been established.&#10;     * <p>&#10;     * If the {@code connect} method is called when the connection&#10;     * has already been opened (indicated by the {@code connected}&#10;     * field having the value {@code true}), the call is ignored.&#10;     * <p>&#10;     * URLConnection objects go through two phases: first they are&#10;     * created, then they are connected.  After being created, and&#10;     * before being connected, various options can be specified&#10;     * (e.g., doInput and UseCaches).  After connecting, it is an&#10;     * error to try to set them.  Operations that depend on being&#10;     * connected, like getContentLength, will implicitly perform the&#10;     * connection, if necessary.&#10;     *&#10;     * @throws SocketTimeoutException if the timeout expires before&#10;     *               the connection can be established&#10;     * @exception  IOException  if an I/O error occurs while opening the&#10;     *               connection.&#10;     * @see java.net.URLConnection#connected&#10;     * @see #getConnectTimeout()&#10;     * @see #setConnectTimeout(int)&#10;     "
  ]
  node [
    id 5
    label "public void setConnectTimeout(int timeout)"
    type "method"
    comment "&#10;     * Sets a specified timeout value, in milliseconds, to be used&#10;     * when opening a communications link to the resource referenced&#10;     * by this URLConnection.  If the timeout expires before the&#10;     * connection can be established, a&#10;     * java.net.SocketTimeoutException is raised. A timeout of zero is&#10;     * interpreted as an infinite timeout.&#10;&#10;     * <p> Some non-standard implementation of this method may ignore&#10;     * the specified timeout. To see the connect timeout set, please&#10;     * call getConnectTimeout().&#10;     *&#10;     * <p><strong>Warning</strong>: If the hostname resolves to multiple IP&#10;     * addresses, Android's default implementation of {@link HttpURLConnection}&#10;     * will try each in&#10;     * <a href=&#34;http://www.ietf.org/rfc/rfc3484.txt&#34;>RFC 3484</a> order. If&#10;     * connecting to each of these addresses fails, multiple timeouts will&#10;     * elapse before the connect attempt throws an exception. Host names&#10;     * that support both IPv6 and IPv4 always have at least 2 IP addresses.&#10;     *&#10;     * @param timeout an {@code int} that specifies the connect&#10;     *               timeout value in milliseconds&#10;     * @throws IllegalArgumentException if the timeout parameter is negative&#10;     *&#10;     * @see #getConnectTimeout()&#10;     * @see #connect()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 6
    label "HttpURLConnection"
  ]
  node [
    id 7
    label "public int getConnectTimeout()"
    type "method"
    comment "&#10;     * Returns setting for connect timeout.&#10;     * <p>&#10;     * 0 return implies that the option is disabled&#10;     * (i.e., timeout of infinity).&#10;     *&#10;     * @return an {@code int} that indicates the connect timeout&#10;     *         value in milliseconds&#10;     * @see #setConnectTimeout(int)&#10;     * @see #connect()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 8
    label "public void setReadTimeout(int timeout)"
    type "method"
    comment "&#10;     * Sets the read timeout to a specified timeout, in&#10;     * milliseconds. A non-zero value specifies the timeout when&#10;     * reading from Input stream when a connection is established to a&#10;     * resource. If the timeout expires before there is data available&#10;     * for read, a java.net.SocketTimeoutException is raised. A&#10;     * timeout of zero is interpreted as an infinite timeout.&#10;     *&#10;     *<p> Some non-standard implementation of this method ignores the&#10;     * specified timeout. To see the read timeout set, please call&#10;     * getReadTimeout().&#10;     *&#10;     * @param timeout an {@code int} that specifies the timeout&#10;     * value to be used in milliseconds&#10;     * @throws IllegalArgumentException if the timeout parameter is negative&#10;     *&#10;     * @see #getReadTimeout()&#10;     * @see InputStream#read()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 9
    label "public int getReadTimeout()"
    type "method"
    comment "&#10;     * Returns setting for read timeout. 0 return implies that the&#10;     * option is disabled (i.e., timeout of infinity).&#10;     *&#10;     * @return an {@code int} that indicates the read timeout&#10;     *         value in milliseconds&#10;     *&#10;     * @see #setReadTimeout(int)&#10;     * @see InputStream#read()&#10;     * @since 1.5&#10;     "
  ]
  node [
    id 10
    label "public URL getURL()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s {@code URL}&#10;     * field.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s {@code URL}&#10;     *          field.&#10;     * @see     java.net.URLConnection#url&#10;     "
  ]
  node [
    id 11
    label "public int getContentLength()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-length} header field.&#10;     * <P>&#10;     * <B>Note</B>: {@link #getContentLengthLong() getContentLengthLong()}&#10;     * should be preferred over this method, since it returns a {@code long}&#10;     * instead and is therefore more portable.</P>&#10;     *&#10;     * @return  the content length of the resource that this connection's URL&#10;     *          references, {@code -1} if the content length is not known,&#10;     *          or if the content length is greater than Integer.MAX_VALUE.&#10;     "
  ]
  node [
    id 12
    label "getContentLengthLong()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 13
    label "public long getContentLengthLong()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-length} header field as a&#10;     * long.&#10;     *&#10;     * @return  the content length of the resource that this connection's URL&#10;     *          references, or {@code -1} if the content length is&#10;     *          not known.&#10;     * @since 7.0&#10;     "
  ]
  node [
    id 14
    label "public String getContentType()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-type} header field.&#10;     *&#10;     * @return  the content type of the resource that the URL references,&#10;     *          or {@code null} if not known.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 15
    label "public String getContentEncoding()"
    type "method"
    comment "&#10;     * Returns the value of the {@code content-encoding} header field.&#10;     *&#10;     * @return  the content encoding of the resource that the URL references,&#10;     *          or {@code null} if not known.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 16
    label "public long getExpiration()"
    type "method"
    comment "&#10;     * Returns the value of the {@code expires} header field.&#10;     *&#10;     * @return  the expiration date of the resource that this URL references,&#10;     *          or 0 if not known. The value is the number of milliseconds since&#10;     *          January 1, 1970 GMT.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 17
    label "public long getDate()"
    type "method"
    comment "&#10;     * Returns the value of the {@code date} header field.&#10;     *&#10;     * @return  the sending date of the resource that the URL references,&#10;     *          or {@code 0} if not known. The value returned is the&#10;     *          number of milliseconds since January 1, 1970 GMT.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 18
    label "public long getLastModified()"
    type "method"
    comment "&#10;     * Returns the value of the {@code last-modified} header field.&#10;     * The result is the number of milliseconds since January 1, 1970 GMT.&#10;     *&#10;     * @return  the date the resource referenced by this&#10;     *          {@code URLConnection} was last modified, or 0 if not known.&#10;     * @see     java.net.URLConnection#getHeaderField(java.lang.String)&#10;     "
  ]
  node [
    id 19
    label "public String getHeaderField(String name)"
    type "method"
    comment "&#10;     * Returns the value of the named header field.&#10;     * <p>&#10;     * If called on a connection that sets the same header multiple times&#10;     * with possibly different values, only the last value is returned.&#10;     *&#10;     *&#10;     * @param   name   the name of a header field.&#10;     * @return  the value of the named header field, or {@code null}&#10;     *          if there is no such field in the header.&#10;     "
  ]
  node [
    id 20
    label "public Map<String, List<String>> getHeaderFields()"
    type "method"
    comment "&#10;     * Returns an unmodifiable Map of the header fields.&#10;     * The Map keys are Strings that represent the&#10;     * response-header field names. Each Map value is an&#10;     * unmodifiable List of Strings that represents&#10;     * the corresponding field values.&#10;     *&#10;     * @return a Map of header fields&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 21
    label "public int getHeaderFieldInt(String name, int Default)"
    type "method"
    comment "&#10;     * Returns the value of the named field parsed as a number.&#10;     * <p>&#10;     * This form of {@code getHeaderField} exists because some&#10;     * connection types (e.g., {@code http-ng}) have pre-parsed&#10;     * headers. Classes for that connection type can override this method&#10;     * and short-circuit the parsing.&#10;     *&#10;     * @param   name      the name of the header field.&#10;     * @param   Default   the default value.&#10;     * @return  the value of the named field, parsed as an integer. The&#10;     *          {@code Default} value is returned if the field is&#10;     *          missing or malformed.&#10;     "
  ]
  node [
    id 22
    label "public long getHeaderFieldLong(String name, long Default)"
    type "method"
    comment "&#10;     * Returns the value of the named field parsed as a number.&#10;     * <p>&#10;     * This form of {@code getHeaderField} exists because some&#10;     * connection types (e.g., {@code http-ng}) have pre-parsed&#10;     * headers. Classes for that connection type can override this method&#10;     * and short-circuit the parsing.&#10;     *&#10;     * @param   name      the name of the header field.&#10;     * @param   Default   the default value.&#10;     * @return  the value of the named field, parsed as a long. The&#10;     *          {@code Default} value is returned if the field is&#10;     *          missing or malformed.&#10;     * @since 7.0&#10;     "
  ]
  node [
    id 23
    label "public long getHeaderFieldDate(String name, long Default)"
    type "method"
    comment "&#10;     * Returns the value of the named field parsed as date.&#10;     * The result is the number of milliseconds since January 1, 1970 GMT&#10;     * represented by the named field.&#10;     * <p>&#10;     * This form of {@code getHeaderField} exists because some&#10;     * connection types (e.g., {@code http-ng}) have pre-parsed&#10;     * headers. Classes for that connection type can override this method&#10;     * and short-circuit the parsing.&#10;     *&#10;     * @param   name     the name of the header field.&#10;     * @param   Default   a default value.&#10;     * @return  the value of the field, parsed as a date. The value of the&#10;     *          {@code Default} argument is returned if the field is&#10;     *          missing or malformed.&#10;     "
  ]
  node [
    id 24
    label "public String getHeaderFieldKey(int n)"
    type "method"
    comment "&#10;     * Returns the key for the {@code n}<sup>th</sup> header field.&#10;     * It returns {@code null} if there are fewer than {@code n+1} fields.&#10;     *&#10;     * @param   n   an index, where {@code n>=0}&#10;     * @return  the key for the {@code n}<sup>th</sup> header field,&#10;     *          or {@code null} if there are fewer than {@code n+1}&#10;     *          fields.&#10;     "
  ]
  node [
    id 25
    label "public String getHeaderField(int n)"
    type "method"
    comment "&#10;     * Returns the value for the {@code n}<sup>th</sup> header field.&#10;     * It returns {@code null} if there are fewer than&#10;     * {@code n+1}fields.&#10;     * <p>&#10;     * This method can be used in conjunction with the&#10;     * {@link #getHeaderFieldKey(int) getHeaderFieldKey} method to iterate through all&#10;     * the headers in the message.&#10;     *&#10;     * @param   n   an index, where {@code n>=0}&#10;     * @return  the value of the {@code n}<sup>th</sup> header field&#10;     *          or {@code null} if there are fewer than {@code n+1} fields&#10;     * @see     java.net.URLConnection#getHeaderFieldKey(int)&#10;     "
  ]
  node [
    id 26
    label "getHeaderFieldKey(int)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 27
    label "public Object getContent() throws IOException"
    type "method"
    comment "&#10;     * Retrieves the contents of this URL connection.&#10;     * <p>&#10;     * This method first determines the content type of the object by&#10;     * calling the {@code getContentType} method. If this is&#10;     * the first time that the application has seen that specific content&#10;     * type, a content handler for that content type is created:&#10;     * <ol>&#10;     * <li>If the application has set up a content handler factory instance&#10;     *     using the {@code setContentHandlerFactory} method, the&#10;     *     {@code createContentHandler} method of that instance is called&#10;     *     with the content type as an argument; the result is a content&#10;     *     handler for that content type.&#10;     * <li>If no content handler factory has yet been set up, or if the&#10;     *     factory's {@code createContentHandler} method returns&#10;     *     {@code null}, then the application loads the class named:&#10;     *     <blockquote><pre>&#10;     *         sun.net.www.content.&#38;lt;<i>contentType</i>&#38;gt;&#10;     *     </pre></blockquote>&#10;     *     where &#38;lt;<i>contentType</i>&#38;gt; is formed by taking the&#10;     *     content-type string, replacing all slash characters with a&#10;     *     {@code period} ('.'), and all other non-alphanumeric characters&#10;     *     with the underscore character '{@code _}'. The alphanumeric&#10;     *     characters are specifically the 26 uppercase ASCII letters&#10;     *     '{@code A}' through '{@code Z}', the 26 lowercase ASCII&#10;     *     letters '{@code a}' through '{@code z}', and the 10 ASCII&#10;     *     digits '{@code 0}' through '{@code 9}'. If the specified&#10;     *     class does not exist, or is not a subclass of&#10;     *     {@code ContentHandler}, then an&#10;     *     {@code UnknownServiceException} is thrown.&#10;     * </ol>&#10;     *&#10;     * @return     the object fetched. The {@code instanceof} operator&#10;     *               should be used to determine the specific kind of object&#10;     *               returned.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               getting the content.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               the content type.&#10;     * @see        java.net.ContentHandlerFactory#createContentHandler(java.lang.String)&#10;     * @see        java.net.URLConnection#getContentType()&#10;     * @see        java.net.URLConnection#setContentHandlerFactory(java.net.ContentHandlerFactory)&#10;     "
  ]
  node [
    id 28
    label "public Object getContent(Class[] classes) throws IOException"
    type "method"
    comment "&#10;     * Retrieves the contents of this URL connection.&#10;     *&#10;     * @param classes the {@code Class} array&#10;     * indicating the requested types&#10;     * @return     the object fetched that is the first match of the type&#10;     *               specified in the classes array. null if none of&#10;     *               the requested types are supported.&#10;     *               The {@code instanceof} operator should be used to&#10;     *               determine the specific kind of object returned.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               getting the content.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               the content type.&#10;     * @see        java.net.URLConnection#getContent()&#10;     * @see        java.net.ContentHandlerFactory#createContentHandler(java.lang.String)&#10;     * @see        java.net.URLConnection#getContent(java.lang.Class[])&#10;     * @see        java.net.URLConnection#setContentHandlerFactory(java.net.ContentHandlerFactory)&#10;     * @since 1.3&#10;     "
  ]
  node [
    id 29
    label "public Permission getPermission() throws IOException"
    type "method"
    comment "&#10;     * Returns a permission object representing the permission&#10;     * necessary to make the connection represented by this&#10;     * object. This method returns null if no permission is&#10;     * required to make the connection. By default, this method&#10;     * returns {@code java.security.AllPermission}. Subclasses&#10;     * should override this method and return the permission&#10;     * that best represents the permission required to make a&#10;     * a connection to the URL. For example, a {@code URLConnection}&#10;     * representing a {@code file:} URL would return a&#10;     * {@code java.io.FilePermission} object.&#10;     *&#10;     * <p>The permission returned may dependent upon the state of the&#10;     * connection. For example, the permission before connecting may be&#10;     * different from that after connecting. For example, an HTTP&#10;     * sever, say foo.com, may redirect the connection to a different&#10;     * host, say bar.com. Before connecting the permission returned by&#10;     * the connection will represent the permission needed to connect&#10;     * to foo.com, while the permission returned after connecting will&#10;     * be to bar.com.&#10;     *&#10;     * <p>Permissions are generally used for two purposes: to protect&#10;     * caches of objects obtained through URLConnections, and to check&#10;     * the right of a recipient to learn about a particular URL. In&#10;     * the first case, the permission should be obtained&#10;     * <em>after</em> the object has been obtained. For example, in an&#10;     * HTTP connection, this will represent the permission to connect&#10;     * to the host from which the data was ultimately fetched. In the&#10;     * second case, the permission should be obtained and tested&#10;     * <em>before</em> connecting.&#10;     *&#10;     * @return the permission object representing the permission&#10;     * necessary to make the connection represented by this&#10;     * URLConnection.&#10;     *&#10;     * @exception IOException if the computation of the permission&#10;     * requires network or file I/O and an exception occurs while&#10;     * computing it.&#10;     "
  ]
  node [
    id 30
    label "public InputStream getInputStream() throws IOException"
    type "method"
    comment "&#10;     * Returns an input stream that reads from this open connection.&#10;     *&#10;     * A SocketTimeoutException can be thrown when reading from the&#10;     * returned input stream if the read timeout expires before data&#10;     * is available for read.&#10;     *&#10;     * @return     an input stream that reads from this open connection.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               creating the input stream.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               input.&#10;     * @see #setReadTimeout(int)&#10;     * @see #getReadTimeout()&#10;     "
  ]
  node [
    id 31
    label "public OutputStream getOutputStream() throws IOException"
    type "method"
    comment "&#10;     * Returns an output stream that writes to this connection.&#10;     *&#10;     * @return     an output stream that writes to this connection.&#10;     * @exception  IOException              if an I/O error occurs while&#10;     *               creating the output stream.&#10;     * @exception  UnknownServiceException  if the protocol does not support&#10;     *               output.&#10;     "
  ]
  node [
    id 32
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a {@code String} representation of this URL connection.&#10;     *&#10;     * @return  a string representation of this {@code URLConnection}.&#10;     "
  ]
  node [
    id 33
    label "public void setDoInput(boolean doinput)"
    type "method"
    comment "&#10;     * Sets the value of the {@code doInput} field for this&#10;     * {@code URLConnection} to the specified value.&#10;     * <p>&#10;     * A URL connection can be used for input and/or output.  Set the DoInput&#10;     * flag to true if you intend to use the URL connection for input,&#10;     * false if not.  The default is true.&#10;     *&#10;     * @param   doinput   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see     java.net.URLConnection#doInput&#10;     * @see #getDoInput()&#10;     "
  ]
  node [
    id 34
    label "public boolean getDoInput()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s&#10;     * {@code doInput} flag.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s&#10;     *          {@code doInput} flag.&#10;     * @see     #setDoInput(boolean)&#10;     "
  ]
  node [
    id 35
    label "public void setDoOutput(boolean dooutput)"
    type "method"
    comment "&#10;     * Sets the value of the {@code doOutput} field for this&#10;     * {@code URLConnection} to the specified value.&#10;     * <p>&#10;     * A URL connection can be used for input and/or output.  Set the DoOutput&#10;     * flag to true if you intend to use the URL connection for output,&#10;     * false if not.  The default is false.&#10;     *&#10;     * @param   dooutput   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see #getDoOutput()&#10;     "
  ]
  node [
    id 36
    label "public boolean getDoOutput()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s&#10;     * {@code doOutput} flag.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s&#10;     *          {@code doOutput} flag.&#10;     * @see     #setDoOutput(boolean)&#10;     "
  ]
  node [
    id 37
    label "public void setAllowUserInteraction(boolean allowuserinteraction)"
    type "method"
    comment "&#10;     * Set the value of the {@code allowUserInteraction} field of&#10;     * this {@code URLConnection}.&#10;     *&#10;     * @param   allowuserinteraction   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see     #getAllowUserInteraction()&#10;     "
  ]
  node [
    id 38
    label "public boolean getAllowUserInteraction()"
    type "method"
    comment "&#10;     * Returns the value of the {@code allowUserInteraction} field for&#10;     * this object.&#10;     *&#10;     * @return  the value of the {@code allowUserInteraction} field for&#10;     *          this object.&#10;     * @see     #setAllowUserInteraction(boolean)&#10;     "
  ]
  node [
    id 39
    label "public static void setDefaultAllowUserInteraction(boolean defaultallowuserinteraction)"
    type "method"
    comment "&#10;     * Sets the default value of the&#10;     * {@code allowUserInteraction} field for all future&#10;     * {@code URLConnection} objects to the specified value.&#10;     *&#10;     * @param   defaultallowuserinteraction   the new value.&#10;     * @see     #getDefaultAllowUserInteraction()&#10;     "
  ]
  node [
    id 40
    label "public static boolean getDefaultAllowUserInteraction()"
    type "method"
    comment "&#10;     * Returns the default value of the {@code allowUserInteraction}&#10;     * field.&#10;     * <p>&#10;     * Ths default is &#34;sticky&#34;, being a part of the static state of all&#10;     * URLConnections.  This flag applies to the next, and all following&#10;     * URLConnections that are created.&#10;     *&#10;     * @return  the default value of the {@code allowUserInteraction}&#10;     *          field.&#10;     * @see     #setDefaultAllowUserInteraction(boolean)&#10;     "
  ]
  node [
    id 41
    label "public void setUseCaches(boolean usecaches)"
    type "method"
    comment "&#10;     * Sets the value of the {@code useCaches} field of this&#10;     * {@code URLConnection} to the specified value.&#10;     * <p>&#10;     * Some protocols do caching of documents.  Occasionally, it is important&#10;     * to be able to &#34;tunnel through&#34; and ignore the caches (e.g., the&#10;     * &#34;reload&#34; button in a browser).  If the UseCaches flag on a connection&#10;     * is true, the connection is allowed to use whatever caches it can.&#10;     *  If false, caches are to be ignored.&#10;     *  The default value comes from DefaultUseCaches, which defaults to&#10;     * true.&#10;     *&#10;     * @param usecaches a {@code boolean} indicating whether&#10;     * or not to allow caching&#10;     * @throws IllegalStateException if already connected&#10;     * @see #getUseCaches()&#10;     "
  ]
  node [
    id 42
    label "public boolean getUseCaches()"
    type "method"
    comment "&#10;     * Returns the value of this {@code URLConnection}'s&#10;     * {@code useCaches} field.&#10;     *&#10;     * @return  the value of this {@code URLConnection}'s&#10;     *          {@code useCaches} field.&#10;     * @see #setUseCaches(boolean)&#10;     "
  ]
  node [
    id 43
    label "public void setIfModifiedSince(long ifmodifiedsince)"
    type "method"
    comment "&#10;     * Sets the value of the {@code ifModifiedSince} field of&#10;     * this {@code URLConnection} to the specified value.&#10;     *&#10;     * @param   ifmodifiedsince   the new value.&#10;     * @throws IllegalStateException if already connected&#10;     * @see     #getIfModifiedSince()&#10;     "
  ]
  node [
    id 44
    label "public long getIfModifiedSince()"
    type "method"
    comment "&#10;     * Returns the value of this object's {@code ifModifiedSince} field.&#10;     *&#10;     * @return  the value of this object's {@code ifModifiedSince} field.&#10;     * @see #setIfModifiedSince(long)&#10;     "
  ]
  node [
    id 45
    label "public boolean getDefaultUseCaches()"
    type "method"
    comment "&#10;     * Returns the default value of a {@code URLConnection}'s&#10;     * {@code useCaches} flag.&#10;     * <p>&#10;     * Ths default is &#34;sticky&#34;, being a part of the static state of all&#10;     * URLConnections.  This flag applies to the next, and all following&#10;     * URLConnections that are created.&#10;     *&#10;     * @return  the default value of a {@code URLConnection}'s&#10;     *          {@code useCaches} flag.&#10;     * @see     #setDefaultUseCaches(boolean)&#10;     "
  ]
  node [
    id 46
    label "public void setDefaultUseCaches(boolean defaultusecaches)"
    type "method"
    comment "&#10;     * Sets the default value of the {@code useCaches} field to the&#10;     * specified value.&#10;     *&#10;     * @param   defaultusecaches   the new value.&#10;     * @see     #getDefaultUseCaches()&#10;     "
  ]
  node [
    id 47
    label "public void setRequestProperty(String key, String value)"
    type "method"
    comment "&#10;     * Sets the general request property. If a property with the key already&#10;     * exists, overwrite its value with the new value.&#10;     *&#10;     * <p> NOTE: HTTP requires all request properties which can&#10;     * legally have multiple instances with the same key&#10;     * to use a comma-separated list syntax which enables multiple&#10;     * properties to be appended into a single property.&#10;     *&#10;     * @param   key     the keyword by which the request is known&#10;     *                  (e.g., &#34;{@code Accept}&#34;).&#10;     * @param   value   the value associated with it.&#10;     * @throws IllegalStateException if already connected&#10;     * @throws NullPointerException if key is <CODE>null</CODE>&#10;     * @see #getRequestProperty(java.lang.String)&#10;     "
  ]
  node [
    id 48
    label "public void addRequestProperty(String key, String value)"
    type "method"
    comment "&#10;     * Adds a general request property specified by a&#10;     * key-value pair.  This method will not overwrite&#10;     * existing values associated with the same key.&#10;     *&#10;     * @param   key     the keyword by which the request is known&#10;     *                  (e.g., &#34;{@code Accept}&#34;).&#10;     * @param   value  the value associated with it.&#10;     * @throws IllegalStateException if already connected&#10;     * @throws NullPointerException if key is null&#10;     * @see #getRequestProperties()&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 49
    label "public String getRequestProperty(String key)"
    type "method"
    comment "&#10;     * Returns the value of the named general request property for this&#10;     * connection.&#10;     *&#10;     * @param key the keyword by which the request is known (e.g., &#34;Accept&#34;).&#10;     * @return  the value of the named general request property for this&#10;     *           connection. If key is null, then null is returned.&#10;     * @throws IllegalStateException if already connected&#10;     * @see #setRequestProperty(java.lang.String, java.lang.String)&#10;     "
  ]
  node [
    id 50
    label "public Map<String, List<String>> getRequestProperties()"
    type "method"
    comment "&#10;     * Returns an unmodifiable Map of general request&#10;     * properties for this connection. The Map keys&#10;     * are Strings that represent the request-header&#10;     * field names. Each Map value is a unmodifiable List&#10;     * of Strings that represents the corresponding&#10;     * field values.&#10;     *&#10;     * @return  a Map of the general request properties for this connection.&#10;     * @throws IllegalStateException if already connected&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 51
    label "public static synchronized void setContentHandlerFactory(ContentHandlerFactory fac)"
    type "method"
    comment "&#10;     * Sets the {@code ContentHandlerFactory} of an&#10;     * application. It can be called at most once by an application.&#10;     * <p>&#10;     * The {@code ContentHandlerFactory} instance is used to&#10;     * construct a content handler from a content type&#10;     * <p>&#10;     * If there is a security manager, this method first calls&#10;     * the security manager's {@code checkSetFactory} method&#10;     * to ensure the operation is allowed.&#10;     * This could result in a SecurityException.&#10;     *&#10;     * @param      fac   the desired factory.&#10;     * @exception  Error  if the factory has already been defined.&#10;     * @exception  SecurityException  if a security manager exists and its&#10;     *             {@code checkSetFactory} method doesn't allow the operation.&#10;     * @see        java.net.ContentHandlerFactory&#10;     * @see        java.net.URLConnection#getContent()&#10;     * @see        SecurityManager#checkSetFactory&#10;     "
  ]
  node [
    id 52
    label " synchronized ContentHandler getContentHandler() throws IOException"
    type "method"
    comment "&#10;     * Gets the Content Handler appropriate for this connection.&#10;     "
  ]
  node [
    id 53
    label "private String stripOffParameters(String contentType)"
    type "method"
    comment "&#10;     * Media types are in the format: type/subtype*(; parameter).&#10;     * For looking up the content handler, we should ignore those&#10;     * parameters.&#10;     "
  ]
  node [
    id 54
    label "private ContentHandler lookupContentHandlerClassFor(String contentType) throws InstantiationException, IllegalAccessException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Looks for a content handler in a user-defineable set of places.&#10;     * By default it looks in sun.net.www.content, but users can define a&#10;     * vertical-bar delimited set of class prefixes to search through in&#10;     * addition by defining the java.content.handler.pkgs property.&#10;     * The class name must be of the form:&#10;     * <pre>&#10;     *     {package-prefix}.{major}.{minor}&#10;     * e.g.&#10;     *     YoyoDyne.experimental.text.plain&#10;     * </pre>&#10;     "
  ]
  node [
    id 55
    label "private String typeToPackageName(String contentType)"
    type "method"
    comment "&#10;     * Utility function to map a MIME content type into an equivalent&#10;     * pair of class name components.  For example: &#34;text/html&#34; would&#10;     * be returned as &#34;text.html&#34;&#10;     "
  ]
  node [
    id 56
    label "private String getContentHandlerPkgPrefixes()"
    type "method"
    comment "&#10;     * Returns a vertical bar separated list of package prefixes for potential&#10;     * content handlers.  Tries to get the java.content.handler.pkgs property&#10;     * to use as a set of package prefixes to search.  Whether or not&#10;     * that property has been defined, the sun.net.www.content is always&#10;     * the last one on the returned package list.&#10;     "
  ]
  node [
    id 57
    label "public static String guessContentTypeFromName(String fname)"
    type "method"
    comment "&#10;     * Tries to determine the content type of an object, based&#10;     * on the specified &#34;file&#34; component of a URL.&#10;     * This is a convenience method that can be used by&#10;     * subclasses that override the {@code getContentType} method.&#10;     *&#10;     * @param   fname   a filename.&#10;     * @return  a guess as to what the content type of the object is,&#10;     *          based upon its file name.&#10;     * @see     java.net.URLConnection#getContentType()&#10;     "
  ]
  node [
    id 58
    label "public static String guessContentTypeFromStream(InputStream is) throws IOException"
    type "method"
    comment "&#10;     * Tries to determine the type of an input stream based on the&#10;     * characters at the beginning of the input stream. This method can&#10;     * be used by subclasses that override the&#10;     * {@code getContentType} method.&#10;     * <p>&#10;     * Ideally, this routine would not be needed. But many&#10;     * {@code http} servers return the incorrect content type; in&#10;     * addition, there are many nonstandard extensions. Direct inspection&#10;     * of the bytes to determine the content type is often more accurate&#10;     * than believing the content type claimed by the {@code http} server.&#10;     *&#10;     * @param      is   an input stream that supports marks.&#10;     * @return     a guess at the content type, or {@code null} if none&#10;     *             can be determined.&#10;     * @exception  IOException  if an I/O error occurs while reading the&#10;     *               input stream.&#10;     * @see        java.io.InputStream#mark(int)&#10;     * @see        java.io.InputStream#markSupported()&#10;     * @see        java.net.URLConnection#getContentType()&#10;     "
  ]
  node [
    id 59
    label "private static boolean checkfpx(InputStream is) throws IOException"
    type "method"
    comment "&#10;     * Check for FlashPix image data in InputStream is.  Return true if&#10;     * the stream has FlashPix data, false otherwise.  Before calling this&#10;     * method, the stream should have already been checked to be sure it&#10;     * contains Microsoft Structured Storage data.&#10;     "
  ]
  node [
    id 60
    label "private static int readBytes(int[] c, int len, InputStream is) throws IOException"
    type "method"
    comment "&#10;     * Tries to read the specified number of bytes from the stream&#10;     * Returns -1, If EOF is reached before len bytes are read, returns 0&#10;     * otherwise&#10;     "
  ]
  node [
    id 61
    label "private static long skipForward(InputStream is, long toSkip) throws IOException"
    type "method"
    comment "&#10;     * Skips through the specified number of bytes from the stream&#10;     * until either EOF is reached, or the specified&#10;     * number of bytes have been skipped&#10;     "
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
    target 4
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
    target 9
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
    target 21
    type "child"
  ]
  edge [
    source 0
    target 22
    type "child"
  ]
  edge [
    source 0
    target 23
    type "child"
  ]
  edge [
    source 0
    target 24
    type "child"
  ]
  edge [
    source 0
    target 25
    type "child"
  ]
  edge [
    source 0
    target 27
    type "child"
  ]
  edge [
    source 0
    target 28
    type "child"
  ]
  edge [
    source 0
    target 29
    type "child"
  ]
  edge [
    source 0
    target 30
    type "child"
  ]
  edge [
    source 0
    target 31
    type "child"
  ]
  edge [
    source 0
    target 32
    type "child"
  ]
  edge [
    source 0
    target 33
    type "child"
  ]
  edge [
    source 0
    target 34
    type "child"
  ]
  edge [
    source 0
    target 35
    type "child"
  ]
  edge [
    source 0
    target 36
    type "child"
  ]
  edge [
    source 0
    target 37
    type "child"
  ]
  edge [
    source 0
    target 38
    type "child"
  ]
  edge [
    source 0
    target 39
    type "child"
  ]
  edge [
    source 0
    target 40
    type "child"
  ]
  edge [
    source 0
    target 41
    type "child"
  ]
  edge [
    source 0
    target 42
    type "child"
  ]
  edge [
    source 0
    target 43
    type "child"
  ]
  edge [
    source 0
    target 44
    type "child"
  ]
  edge [
    source 0
    target 45
    type "child"
  ]
  edge [
    source 0
    target 46
    type "child"
  ]
  edge [
    source 0
    target 47
    type "child"
  ]
  edge [
    source 0
    target 48
    type "child"
  ]
  edge [
    source 0
    target 49
    type "child"
  ]
  edge [
    source 0
    target 50
    type "child"
  ]
  edge [
    source 0
    target 51
    type "child"
  ]
  edge [
    source 0
    target 52
    type "child"
  ]
  edge [
    source 0
    target 53
    type "child"
  ]
  edge [
    source 0
    target 54
    type "child"
  ]
  edge [
    source 0
    target 55
    type "child"
  ]
  edge [
    source 0
    target 56
    type "child"
  ]
  edge [
    source 0
    target 57
    type "child"
  ]
  edge [
    source 0
    target 58
    type "child"
  ]
  edge [
    source 0
    target 59
    type "child"
  ]
  edge [
    source 0
    target 60
    type "child"
  ]
  edge [
    source 0
    target 61
    type "child"
  ]
  edge [
    source 1
    target 2
    type "link"
  ]
  edge [
    source 5
    target 6
    type "link"
  ]
  edge [
    source 11
    target 12
    type "link"
  ]
  edge [
    source 25
    target 26
    type "link"
  ]
]
