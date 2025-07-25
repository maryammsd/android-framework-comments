graph [
  directed 1
  node [
    id 0
    label "java.lang.Object"
    type "class"
    comment "&#10; * Class {@code Object} is the root of the class hierarchy.&#10; * Every class has {@code Object} as a superclass. All objects,&#10; * including arrays, implement the methods of this class.&#10; *&#10; * @see     java.lang.Class&#10; * @since   1.0&#10; "
  ]
  node [
    id 1
    label "public final Class<?> getClass()"
    type "method"
    comment "&#10;     * Returns the runtime class of this {@code Object}. The returned&#10;     * {@code Class} object is the object that is locked by {@code&#10;     * static synchronized} methods of the represented class.&#10;     *&#10;     * <p><b>The actual result type is {@code Class<? extends |X|>}&#10;     * where {@code |X|} is the erasure of the static type of the&#10;     * expression on which {@code getClass} is called.</b> For&#10;     * example, no cast is required in this code fragment:</p>&#10;     *&#10;     * <p>&#10;     * {@code Number n = 0;                             }<br>&#10;     * {@code Class<? extends Number> c = n.getClass(); }&#10;     * </p>&#10;     *&#10;     * @return The {@code Class} object that represents the runtime&#10;     *         class of this object.&#10;     * @jls 15.8.2 Class Literals&#10;     "
  ]
  node [
    id 2
    label "public int hashCode()"
    type "method"
    comment "&#10;     * Returns a hash code value for the object. This method is&#10;     * supported for the benefit of hash tables such as those provided by&#10;     * {@link java.util.HashMap}.&#10;     * <p>&#10;     * The general contract of {@code hashCode} is:&#10;     * <ul>&#10;     * <li>Whenever it is invoked on the same object more than once during&#10;     *     an execution of a Java application, the {@code hashCode} method&#10;     *     must consistently return the same integer, provided no information&#10;     *     used in {@code equals} comparisons on the object is modified.&#10;     *     This integer need not remain consistent from one execution of an&#10;     *     application to another execution of the same application.&#10;     * <li>If two objects are equal according to the {@link&#10;     *     #equals(Object) equals} method, then calling the {@code&#10;     *     hashCode} method on each of the two objects must produce the&#10;     *     same integer result.&#10;     * <li>It is <em>not</em> required that if two objects are unequal&#10;     *     according to the {@link #equals(Object) equals} method, then&#10;     *     calling the {@code hashCode} method on each of the two objects&#10;     *     must produce distinct integer results.  However, the programmer&#10;     *     should be aware that producing distinct integer results for&#10;     *     unequal objects may improve the performance of hash tables.&#10;     * </ul>&#10;     *&#10;     * @implSpec&#10;     * As far as is reasonably practical, the {@code hashCode} method defined&#10;     * by class {@code Object} returns distinct integers for distinct objects.&#10;     *&#10;     * @return  a hash code value for this object.&#10;     * @see     java.lang.Object#equals(java.lang.Object)&#10;     * @see     java.lang.System#identityHashCode&#10;     "
  ]
  node [
    id 3
    label "equals(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "java.util.HashMap"
  ]
  node [
    id 5
    label " static int identityHashCode(Object obj)"
    type "method"
    comment " package-private "
  ]
  node [
    id 6
    label "private static native int identityHashCodeNative(Object obj)"
    type "method"
    comment "&#10;     * Return the identity hash code when the information in the monitor field&#10;     * is not sufficient.&#10;     "
  ]
  node [
    id 7
    label "public boolean equals(Object obj)"
    type "method"
    comment "&#10;     * Indicates whether some other object is &#34;equal to&#34; this one.&#10;     * <p>&#10;     * The {@code equals} method implements an equivalence relation&#10;     * on non-null object references:&#10;     * <ul>&#10;     * <li>It is <i>reflexive</i>: for any non-null reference value&#10;     *     {@code x}, {@code x.equals(x)} should return&#10;     *     {@code true}.&#10;     * <li>It is <i>symmetric</i>: for any non-null reference values&#10;     *     {@code x} and {@code y}, {@code x.equals(y)}&#10;     *     should return {@code true} if and only if&#10;     *     {@code y.equals(x)} returns {@code true}.&#10;     * <li>It is <i>transitive</i>: for any non-null reference values&#10;     *     {@code x}, {@code y}, and {@code z}, if&#10;     *     {@code x.equals(y)} returns {@code true} and&#10;     *     {@code y.equals(z)} returns {@code true}, then&#10;     *     {@code x.equals(z)} should return {@code true}.&#10;     * <li>It is <i>consistent</i>: for any non-null reference values&#10;     *     {@code x} and {@code y}, multiple invocations of&#10;     *     {@code x.equals(y)} consistently return {@code true}&#10;     *     or consistently return {@code false}, provided no&#10;     *     information used in {@code equals} comparisons on the&#10;     *     objects is modified.&#10;     * <li>For any non-null reference value {@code x},&#10;     *     {@code x.equals(null)} should return {@code false}.&#10;     * </ul>&#10;     *&#10;     * <p>&#10;     * An equivalence relation partitions the elements it operates on&#10;     * into <i>equivalence classes</i>; all the members of an&#10;     * equivalence class are equal to each other. Members of an&#10;     * equivalence class are substitutable for each other, at least&#10;     * for some purposes.&#10;     *&#10;     * @implSpec&#10;     * The {@code equals} method for class {@code Object} implements&#10;     * the most discriminating possible equivalence relation on objects;&#10;     * that is, for any non-null reference values {@code x} and&#10;     * {@code y}, this method returns {@code true} if and only&#10;     * if {@code x} and {@code y} refer to the same object&#10;     * ({@code x == y} has the value {@code true}).&#10;     *&#10;     * In other words, under the reference equality equivalence&#10;     * relation, each equivalence class only has a single element.&#10;     *&#10;     * @apiNote&#10;     * It is generally necessary to override the {@link #hashCode hashCode}&#10;     * method whenever this method is overridden, so as to maintain the&#10;     * general contract for the {@code hashCode} method, which states&#10;     * that equal objects must have equal hash codes.&#10;     *&#10;     * @param   obj   the reference object with which to compare.&#10;     * @return  {@code true} if this object is the same as the obj&#10;     *          argument; {@code false} otherwise.&#10;     * @see     #hashCode()&#10;     * @see     java.util.HashMap&#10;     "
  ]
  node [
    id 8
    label "hashCode"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 9
    label "protected Object clone() throws CloneNotSupportedException"
    type "method"
    comment "&#10;     * Creates and returns a copy of this object.  The precise meaning&#10;     * of &#34;copy&#34; may depend on the class of the object. The general&#10;     * intent is that, for any object {@code x}, the expression:&#10;     * <blockquote>&#10;     * <pre>&#10;     * x.clone() != x</pre></blockquote>&#10;     * will be true, and that the expression:&#10;     * <blockquote>&#10;     * <pre>&#10;     * x.clone().getClass() == x.getClass()</pre></blockquote>&#10;     * will be {@code true}, but these are not absolute requirements.&#10;     * While it is typically the case that:&#10;     * <blockquote>&#10;     * <pre>&#10;     * x.clone().equals(x)</pre></blockquote>&#10;     * will be {@code true}, this is not an absolute requirement.&#10;     * <p>&#10;     * By convention, the returned object should be obtained by calling&#10;     * {@code super.clone}.  If a class and all of its superclasses (except&#10;     * {@code Object}) obey this convention, it will be the case that&#10;     * {@code x.clone().getClass() == x.getClass()}.&#10;     * <p>&#10;     * By convention, the object returned by this method should be independent&#10;     * of this object (which is being cloned).  To achieve this independence,&#10;     * it may be necessary to modify one or more fields of the object returned&#10;     * by {@code super.clone} before returning it.  Typically, this means&#10;     * copying any mutable objects that comprise the internal &#34;deep structure&#34;&#10;     * of the object being cloned and replacing the references to these&#10;     * objects with references to the copies.  If a class contains only&#10;     * primitive fields or references to immutable objects, then it is usually&#10;     * the case that no fields in the object returned by {@code super.clone}&#10;     * need to be modified.&#10;     *&#10;     * @implSpec&#10;     * The method {@code clone} for class {@code Object} performs a&#10;     * specific cloning operation. First, if the class of this object does&#10;     * not implement the interface {@code Cloneable}, then a&#10;     * {@code CloneNotSupportedException} is thrown. Note that all arrays&#10;     * are considered to implement the interface {@code Cloneable} and that&#10;     * the return type of the {@code clone} method of an array type {@code T[]}&#10;     * is {@code T[]} where T is any reference or primitive type.&#10;     * Otherwise, this method creates a new instance of the class of this&#10;     * object and initializes all its fields with exactly the contents of&#10;     * the corresponding fields of this object, as if by assignment; the&#10;     * contents of the fields are not themselves cloned. Thus, this method&#10;     * performs a &#34;shallow copy&#34; of this object, not a &#34;deep copy&#34; operation.&#10;     * <p>&#10;     * The class {@code Object} does not itself implement the interface&#10;     * {@code Cloneable}, so calling the {@code clone} method on an object&#10;     * whose class is {@code Object} will result in throwing an&#10;     * exception at run time.&#10;     *&#10;     * @return     a clone of this instance.&#10;     * @throws  CloneNotSupportedException  if the object's class does not&#10;     *               support the {@code Cloneable} interface. Subclasses&#10;     *               that override the {@code clone} method can also&#10;     *               throw this exception to indicate that an instance cannot&#10;     *               be cloned.&#10;     * @see java.lang.Cloneable&#10;     "
  ]
  node [
    id 10
    label "private native Object internalClone()"
    type "method"
    comment "&#10;     * Native helper method for cloning.&#10;     "
  ]
  node [
    id 11
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a string representation of the object.&#10;     * @apiNote&#10;     * In general, the&#10;     * {@code toString} method returns a string that&#10;     * &#34;textually represents&#34; this object. The result should&#10;     * be a concise but informative representation that is easy for a&#10;     * person to read.&#10;     * It is recommended that all subclasses override this method.&#10;     * The string output is not necessarily stable over time or across&#10;     * JVM invocations.&#10;     * @implSpec&#10;     * The {@code toString} method for class {@code Object}&#10;     * returns a string consisting of the name of the class of which the&#10;     * object is an instance, the at-sign character `{@code @}', and&#10;     * the unsigned hexadecimal representation of the hash code of the&#10;     * object. In other words, this method returns a string equal to the&#10;     * value of:&#10;     * <blockquote>&#10;     * <pre>&#10;     * getClass().getName() + '@' + Integer.toHexString(hashCode())&#10;     * </pre></blockquote>&#10;     *&#10;     * @return  a string representation of the object.&#10;     "
  ]
  node [
    id 12
    label "public final native void notify()"
    type "method"
    comment "&#10;     * Wakes up a single thread that is waiting on this object's&#10;     * monitor. If any threads are waiting on this object, one of them&#10;     * is chosen to be awakened. The choice is arbitrary and occurs at&#10;     * the discretion of the implementation. A thread waits on an object's&#10;     * monitor by calling one of the {@code wait} methods.&#10;     * <p>&#10;     * The awakened thread will not be able to proceed until the current&#10;     * thread relinquishes the lock on this object. The awakened thread will&#10;     * compete in the usual manner with any other threads that might be&#10;     * actively competing to synchronize on this object; for example, the&#10;     * awakened thread enjoys no reliable privilege or disadvantage in being&#10;     * the next thread to lock this object.&#10;     * <p>&#10;     * This method should only be called by a thread that is the owner&#10;     * of this object's monitor. A thread becomes the owner of the&#10;     * object's monitor in one of three ways:&#10;     * <ul>&#10;     * <li>By executing a synchronized instance method of that object.&#10;     * <li>By executing the body of a {@code synchronized} statement&#10;     *     that synchronizes on the object.&#10;     * <li>For objects of type {@code Class,} by executing a&#10;     *     synchronized static method of that class.&#10;     * </ul>&#10;     * <p>&#10;     * Only one thread at a time can own an object's monitor.&#10;     *&#10;     * @throws  IllegalMonitorStateException  if the current thread is not&#10;     *               the owner of this object's monitor.&#10;     * @see        java.lang.Object#notifyAll()&#10;     * @see        java.lang.Object#wait()&#10;     "
  ]
  node [
    id 13
    label "public final native void notifyAll()"
    type "method"
    comment "&#10;     * Wakes up all threads that are waiting on this object's monitor. A&#10;     * thread waits on an object's monitor by calling one of the&#10;     * {@code wait} methods.&#10;     * <p>&#10;     * The awakened threads will not be able to proceed until the current&#10;     * thread relinquishes the lock on this object. The awakened threads&#10;     * will compete in the usual manner with any other threads that might&#10;     * be actively competing to synchronize on this object; for example,&#10;     * the awakened threads enjoy no reliable privilege or disadvantage in&#10;     * being the next thread to lock this object.&#10;     * <p>&#10;     * This method should only be called by a thread that is the owner&#10;     * of this object's monitor. See the {@code notify} method for a&#10;     * description of the ways in which a thread can become the owner of&#10;     * a monitor.&#10;     *&#10;     * @throws  IllegalMonitorStateException  if the current thread is not&#10;     *               the owner of this object's monitor.&#10;     * @see        java.lang.Object#notify()&#10;     * @see        java.lang.Object#wait()&#10;     "
  ]
  node [
    id 14
    label "public final void wait(long timeoutMillis) throws InterruptedException"
    type "method"
    comment " public final native void wait(long timeoutMillis) throws InterruptedException;"
  ]
  node [
    id 15
    label "public final native void wait(long timeoutMillis, int nanos) throws InterruptedException"
    type "method"
    comment "&#10;    public final void wait(long timeoutMillis, int nanos) throws InterruptedException {&#10;        if (timeoutMillis < 0) {&#10;            throw new IllegalArgumentException(&#34;timeoutMillis value is negative&#34;);&#10;        }&#10;&#10;        if (nanos < 0 || nanos > 999999) {&#10;            throw new IllegalArgumentException(&#10;                                &#34;nanosecond timeout value out of range&#34;);&#10;        }&#10;&#10;        if (nanos > 0 &#38;&#38; timeoutMillis < Long.MAX_VALUE) {&#10;            timeoutMillis++;&#10;        }&#10;&#10;        wait(timeoutMillis);&#10;    }&#10;    "
  ]
  node [
    id 16
    label "public final void wait() throws InterruptedException"
    type "method"
    comment "&#10;     * Causes the current thread to wait until it is awakened, typically&#10;     * by being <em>notified</em> or <em>interrupted</em>.&#10;     * <p>&#10;     * In all respects, this method behaves as if {@code wait(0L, 0)}&#10;     * had been called. See the specification of the {@link #wait(long, int)} method&#10;     * for details.&#10;     *&#10;     * @throws IllegalMonitorStateException if the current thread is not&#10;     *         the owner of the object's monitor&#10;     * @throws InterruptedException if any thread interrupted the current thread before or&#10;     *         while the current thread was waiting. The <em>interrupted status</em> of the&#10;     *         current thread is cleared when this exception is thrown.&#10;     * @see    #notify()&#10;     * @see    #notifyAll()&#10;     * @see    #wait(long)&#10;     * @see    #wait(long, int)&#10;     "
  ]
  node [
    id 17
    label "wait(long"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 18
    label "protected void finalize() throws Throwable"
    type "method"
    comment " @Deprecated(since=&#34;9&#34;)"
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 0
    target 2
    type "child"
  ]
  edge [
    source 0
    target 5
    type "child"
  ]
  edge [
    source 0
    target 6
    type "child"
  ]
  edge [
    source 0
    target 7
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
    target 18
    type "child"
  ]
  edge [
    source 2
    target 3
    type "link"
  ]
  edge [
    source 2
    target 4
    type "link"
  ]
  edge [
    source 7
    target 8
    type "link"
  ]
  edge [
    source 16
    target 17
    type "link"
  ]
]
