graph [
  directed 1
  node [
    id 0
    label "java.lang.Throwable"
    type "class"
    comment "&#10; * The {@code Throwable} class is the superclass of all errors and&#10; * exceptions in the Java language. Only objects that are instances of this&#10; * class (or one of its subclasses) are thrown by the Java Virtual Machine or&#10; * can be thrown by the Java {@code throw} statement. Similarly, only&#10; * this class or one of its subclasses can be the argument type in a&#10; * {@code catch} clause.&#10; *&#10; * For the purposes of compile-time checking of exceptions, {@code&#10; * Throwable} and any subclass of {@code Throwable} that is not also a&#10; * subclass of either {@link RuntimeException} or {@link Error} are&#10; * regarded as checked exceptions.&#10; *&#10; * <p>Instances of two subclasses, {@link java.lang.Error} and&#10; * {@link java.lang.Exception}, are conventionally used to indicate&#10; * that exceptional situations have occurred. Typically, these instances&#10; * are freshly created in the context of the exceptional situation so&#10; * as to include relevant information (such as stack trace data).&#10; *&#10; * <p>A throwable contains a snapshot of the execution stack of its&#10; * thread at the time it was created. It can also contain a message&#10; * string that gives more information about the error. Over time, a&#10; * throwable can {@linkplain Throwable#addSuppressed suppress} other&#10; * throwables from being propagated.  Finally, the throwable can also&#10; * contain a <i>cause</i>: another throwable that caused this&#10; * throwable to be constructed.  The recording of this causal information&#10; * is referred to as the <i>chained exception</i> facility, as the&#10; * cause can, itself, have a cause, and so on, leading to a &#34;chain&#34; of&#10; * exceptions, each caused by another.&#10; *&#10; * <p>One reason that a throwable may have a cause is that the class that&#10; * throws it is built atop a lower layered abstraction, and an operation on&#10; * the upper layer fails due to a failure in the lower layer.  It would be bad&#10; * design to let the throwable thrown by the lower layer propagate outward, as&#10; * it is generally unrelated to the abstraction provided by the upper layer.&#10; * Further, doing so would tie the API of the upper layer to the details of&#10; * its implementation, assuming the lower layer's exception was a checked&#10; * exception.  Throwing a &#34;wrapped exception&#34; (i.e., an exception containing a&#10; * cause) allows the upper layer to communicate the details of the failure to&#10; * its caller without incurring either of these shortcomings.  It preserves&#10; * the flexibility to change the implementation of the upper layer without&#10; * changing its API (in particular, the set of exceptions thrown by its&#10; * methods).&#10; *&#10; * <p>A second reason that a throwable may have a cause is that the method&#10; * that throws it must conform to a general-purpose interface that does not&#10; * permit the method to throw the cause directly.  For example, suppose&#10; * a persistent collection conforms to the {@link java.util.Collection&#10; * Collection} interface, and that its persistence is implemented atop&#10; * {@code java.io}.  Suppose the internals of the {@code add} method&#10; * can throw an {@link java.io.IOException IOException}.  The implementation&#10; * can communicate the details of the {@code IOException} to its caller&#10; * while conforming to the {@code Collection} interface by wrapping the&#10; * {@code IOException} in an appropriate unchecked exception.  (The&#10; * specification for the persistent collection should indicate that it is&#10; * capable of throwing such exceptions.)&#10; *&#10; * <p>A cause can be associated with a throwable in two ways: via a&#10; * constructor that takes the cause as an argument, or via the&#10; * {@link #initCause(Throwable)} method.  New throwable classes that&#10; * wish to allow causes to be associated with them should provide constructors&#10; * that take a cause and delegate (perhaps indirectly) to one of the&#10; * {@code Throwable} constructors that takes a cause.&#10; *&#10; * Because the {@code initCause} method is public, it allows a cause to be&#10; * associated with any throwable, even a &#34;legacy throwable&#34; whose&#10; * implementation predates the addition of the exception chaining mechanism to&#10; * {@code Throwable}.&#10; *&#10; * <p>By convention, class {@code Throwable} and its subclasses have two&#10; * constructors, one that takes no arguments and one that takes a&#10; * {@code String} argument that can be used to produce a detail message.&#10; * Further, those subclasses that might likely have a cause associated with&#10; * them should have two more constructors, one that takes a&#10; * {@code Throwable} (the cause), and one that takes a&#10; * {@code String} (the detail message) and a {@code Throwable} (the&#10; * cause).&#10; *&#10; * @author  Josh Bloch (Added exception chaining and programmatic access to&#10; *          stack trace in 1.4.)&#10; * @jls 11.2 Compile-Time Checking of Exceptions&#10; * @since 1.0&#10; "
  ]
  node [
    id 1
    label "public String getMessage()"
    type "method"
    comment "&#10;     * Returns the detail message string of this throwable.&#10;     *&#10;     * @return  the detail message string of this {@code Throwable} instance&#10;     *          (which may be {@code null}).&#10;     "
  ]
  node [
    id 2
    label "public String getLocalizedMessage()"
    type "method"
    comment "&#10;     * Creates a localized description of this throwable.&#10;     * Subclasses may override this method in order to produce a&#10;     * locale-specific message.  For subclasses that do not override this&#10;     * method, the default implementation returns the same result as&#10;     * {@code getMessage()}.&#10;     *&#10;     * @return  The localized description of this throwable.&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 3
    label "public synchronized Throwable getCause()"
    type "method"
    comment "&#10;     * Returns the cause of this throwable or {@code null} if the&#10;     * cause is nonexistent or unknown.  (The cause is the throwable that&#10;     * caused this throwable to get thrown.)&#10;     *&#10;     * <p>This implementation returns the cause that was supplied via one of&#10;     * the constructors requiring a {@code Throwable}, or that was set after&#10;     * creation with the {@link #initCause(Throwable)} method.  While it is&#10;     * typically unnecessary to override this method, a subclass can override&#10;     * it to return a cause set by some other means.  This is appropriate for&#10;     * a &#34;legacy chained throwable&#34; that predates the addition of chained&#10;     * exceptions to {@code Throwable}.  Note that it is <i>not</i>&#10;     * necessary to override any of the {@code PrintStackTrace} methods,&#10;     * all of which invoke the {@code getCause} method to determine the&#10;     * cause of a throwable.&#10;     *&#10;     * @return  the cause of this throwable or {@code null} if the&#10;     *          cause is nonexistent or unknown.&#10;     * @since 1.4&#10;     "
  ]
  node [
    id 4
    label "initCause(Throwable)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 5
    label "public synchronized Throwable initCause(Throwable cause)"
    type "method"
    comment "&#10;     * Initializes the <i>cause</i> of this throwable to the specified value.&#10;     * (The cause is the throwable that caused this throwable to get thrown.)&#10;     *&#10;     * <p>This method can be called at most once.  It is generally called from&#10;     * within the constructor, or immediately after creating the&#10;     * throwable.  If this throwable was created&#10;     * with {@link #Throwable(Throwable)} or&#10;     * {@link #Throwable(String,Throwable)}, this method cannot be called&#10;     * even once.&#10;     *&#10;     * <p>An example of using this method on a legacy throwable type&#10;     * without other support for setting the cause is:&#10;     *&#10;     * <pre>&#10;     * try {&#10;     *     lowLevelOp();&#10;     * } catch (LowLevelException le) {&#10;     *     throw (HighLevelException)&#10;     *           new HighLevelException().initCause(le); // Legacy constructor&#10;     * }&#10;     * </pre>&#10;     *&#10;     * @param  cause the cause (which is saved for later retrieval by the&#10;     *         {@link #getCause()} method).  (A {@code null} value is&#10;     *         permitted, and indicates that the cause is nonexistent or&#10;     *         unknown.)&#10;     * @return  a reference to this {@code Throwable} instance.&#10;     * @throws IllegalArgumentException if {@code cause} is this&#10;     *         throwable.  (A throwable cannot be its own cause.)&#10;     * @throws IllegalStateException if this throwable was&#10;     *         created with {@link #Throwable(Throwable)} or&#10;     *         {@link #Throwable(String,Throwable)}, or this method has already&#10;     *         been called on this throwable.&#10;     * @since  1.4&#10;     "
  ]
  node [
    id 6
    label "getCause()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label "Throwable(String"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 8
    label "Throwable(Throwable)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 9
    label " final void setCause(Throwable t)"
    type "method"
    comment "&#10;     * This is called by readObject of a few exceptions such as&#10;     * ClassNotFoundException and ExceptionInInitializerError to deserialize&#10;     * a stream output from an older runtime version where the cause may&#10;     * have set to null.&#10;     "
  ]
  node [
    id 10
    label "public String toString()"
    type "method"
    comment "&#10;     * Returns a short description of this throwable.&#10;     * The result is the concatenation of:&#10;     * <ul>&#10;     * <li> the {@linkplain Class#getName() name} of the class of this object&#10;     * <li> &#34;: &#34; (a colon and a space)&#10;     * <li> the result of invoking this object's {@link #getLocalizedMessage}&#10;     *      method&#10;     * </ul>&#10;     * If {@code getLocalizedMessage} returns {@code null}, then just&#10;     * the class name is returned.&#10;     *&#10;     * @return a string representation of this throwable.&#10;     "
  ]
  node [
    id 11
    label "getLocalizedMessage"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 12
    label "public void printStackTrace()"
    type "method"
    comment "&#10;     * Prints this throwable and its backtrace to the&#10;     * standard error stream. This method prints a stack trace for this&#10;     * {@code Throwable} object on the error output stream that is&#10;     * the value of the field {@code System.err}. The first line of&#10;     * output contains the result of the {@link #toString()} method for&#10;     * this object.  Remaining lines represent data previously recorded by&#10;     * the method {@link #fillInStackTrace()}. The format of this&#10;     * information depends on the implementation, but the following&#10;     * example may be regarded as typical:&#10;     * <blockquote><pre>&#10;     * java.lang.NullPointerException&#10;     *         at MyClass.mash(MyClass.java:9)&#10;     *         at MyClass.crunch(MyClass.java:6)&#10;     *         at MyClass.main(MyClass.java:3)&#10;     * </pre></blockquote>&#10;     * This example was produced by running the program:&#10;     * <pre>&#10;     * class MyClass {&#10;     *     public static void main(String[] args) {&#10;     *         crunch(null);&#10;     *     }&#10;     *     static void crunch(int[] a) {&#10;     *         mash(a);&#10;     *     }&#10;     *     static void mash(int[] b) {&#10;     *         System.out.println(b[0]);&#10;     *     }&#10;     * }&#10;     * </pre>&#10;     * The backtrace for a throwable with an initialized, non-null cause&#10;     * should generally include the backtrace for the cause.  The format&#10;     * of this information depends on the implementation, but the following&#10;     * example may be regarded as typical:&#10;     * <pre>&#10;     * HighLevelException: MidLevelException: LowLevelException&#10;     *         at Junk.a(Junk.java:13)&#10;     *         at Junk.main(Junk.java:4)&#10;     * Caused by: MidLevelException: LowLevelException&#10;     *         at Junk.c(Junk.java:23)&#10;     *         at Junk.b(Junk.java:17)&#10;     *         at Junk.a(Junk.java:11)&#10;     *         ... 1 more&#10;     * Caused by: LowLevelException&#10;     *         at Junk.e(Junk.java:30)&#10;     *         at Junk.d(Junk.java:27)&#10;     *         at Junk.c(Junk.java:21)&#10;     *         ... 3 more&#10;     * </pre>&#10;     * Note the presence of lines containing the characters {@code &#34;...&#34;}.&#10;     * These lines indicate that the remainder of the stack trace for this&#10;     * exception matches the indicated number of frames from the bottom of the&#10;     * stack trace of the exception that was caused by this exception (the&#10;     * &#34;enclosing&#34; exception).  This shorthand can greatly reduce the length&#10;     * of the output in the common case where a wrapped exception is thrown&#10;     * from same method as the &#34;causative exception&#34; is caught.  The above&#10;     * example was produced by running the program:&#10;     * <pre>&#10;     * public class Junk {&#10;     *     public static void main(String args[]) {&#10;     *         try {&#10;     *             a();&#10;     *         } catch(HighLevelException e) {&#10;     *             e.printStackTrace();&#10;     *         }&#10;     *     }&#10;     *     static void a() throws HighLevelException {&#10;     *         try {&#10;     *             b();&#10;     *         } catch(MidLevelException e) {&#10;     *             throw new HighLevelException(e);&#10;     *         }&#10;     *     }&#10;     *     static void b() throws MidLevelException {&#10;     *         c();&#10;     *     }&#10;     *     static void c() throws MidLevelException {&#10;     *         try {&#10;     *             d();&#10;     *         } catch(LowLevelException e) {&#10;     *             throw new MidLevelException(e);&#10;     *         }&#10;     *     }&#10;     *     static void d() throws LowLevelException {&#10;     *        e();&#10;     *     }&#10;     *     static void e() throws LowLevelException {&#10;     *         throw new LowLevelException();&#10;     *     }&#10;     * }&#10;     *&#10;     * class HighLevelException extends Exception {&#10;     *     HighLevelException(Throwable cause) { super(cause); }&#10;     * }&#10;     *&#10;     * class MidLevelException extends Exception {&#10;     *     MidLevelException(Throwable cause)  { super(cause); }&#10;     * }&#10;     *&#10;     * class LowLevelException extends Exception {&#10;     * }&#10;     * </pre>&#10;     * As of release 7, the platform supports the notion of&#10;     * <i>suppressed exceptions</i> (in conjunction with the {@code&#10;     * try}-with-resources statement). Any exceptions that were&#10;     * suppressed in order to deliver an exception are printed out&#10;     * beneath the stack trace.  The format of this information&#10;     * depends on the implementation, but the following example may be&#10;     * regarded as typical:&#10;     *&#10;     * <pre>&#10;     * Exception in thread &#34;main&#34; java.lang.Exception: Something happened&#10;     *  at Foo.bar(Foo.java:10)&#10;     *  at Foo.main(Foo.java:5)&#10;     *  Suppressed: Resource$CloseFailException: Resource ID = 0&#10;     *          at Resource.close(Resource.java:26)&#10;     *          at Foo.bar(Foo.java:9)&#10;     *          ... 1 more&#10;     * </pre>&#10;     * Note that the &#34;... n more&#34; notation is used on suppressed exceptions&#10;     * just as it is used on causes. Unlike causes, suppressed exceptions are&#10;     * indented beyond their &#34;containing exceptions.&#34;&#10;     *&#10;     * <p>An exception can have both a cause and one or more suppressed&#10;     * exceptions:&#10;     * <pre>&#10;     * Exception in thread &#34;main&#34; java.lang.Exception: Main block&#10;     *  at Foo3.main(Foo3.java:7)&#10;     *  Suppressed: Resource$CloseFailException: Resource ID = 2&#10;     *          at Resource.close(Resource.java:26)&#10;     *          at Foo3.main(Foo3.java:5)&#10;     *  Suppressed: Resource$CloseFailException: Resource ID = 1&#10;     *          at Resource.close(Resource.java:26)&#10;     *          at Foo3.main(Foo3.java:5)&#10;     * Caused by: java.lang.Exception: I did it&#10;     *  at Foo3.main(Foo3.java:8)&#10;     * </pre>&#10;     * Likewise, a suppressed exception can have a cause:&#10;     * <pre>&#10;     * Exception in thread &#34;main&#34; java.lang.Exception: Main block&#10;     *  at Foo4.main(Foo4.java:6)&#10;     *  Suppressed: Resource2$CloseFailException: Resource ID = 1&#10;     *          at Resource2.close(Resource2.java:20)&#10;     *          at Foo4.main(Foo4.java:5)&#10;     *  Caused by: java.lang.Exception: Rats, you caught me&#10;     *          at Resource2$CloseFailException.&#38;lt;init&#38;gt;(Resource2.java:45)&#10;     *          ... 2 more&#10;     * </pre>&#10;     "
  ]
  node [
    id 13
    label "fillInStackTrace()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 14
    label "toString()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "public void printStackTrace(PrintStream s)"
    type "method"
    comment "&#10;     * Prints this throwable and its backtrace to the specified print stream.&#10;     *&#10;     * @param s {@code PrintStream} to use for output&#10;     "
  ]
  node [
    id 16
    label "private void printEnclosedStackTrace(PrintStreamOrWriter s, StackTraceElement[] enclosingTrace, String caption, String prefix, Set<Throwable> dejaVu)"
    type "method"
    comment "&#10;     * Print our stack trace as an enclosed exception for the specified&#10;     * stack trace.&#10;     "
  ]
  node [
    id 17
    label "public void printStackTrace(PrintWriter s)"
    type "method"
    comment "&#10;     * Prints this throwable and its backtrace to the specified&#10;     * print writer.&#10;     *&#10;     * @param s {@code PrintWriter} to use for output&#10;     * @since   1.1&#10;     "
  ]
  node [
    id 18
    label "public synchronized Throwable fillInStackTrace()"
    type "method"
    comment " Android-changed: Add @NeverInline to keep code size low."
  ]
  node [
    id 19
    label "private static native Object nativeFillInStackTrace()"
    type "method"
    comment " private native Throwable fillInStackTrace(int dummy);"
  ]
  node [
    id 20
    label "public StackTraceElement[] getStackTrace()"
    type "method"
    comment "&#10;     * Provides programmatic access to the stack trace information printed by&#10;     * {@link #printStackTrace()}.  Returns an array of stack trace elements,&#10;     * each representing one stack frame.  The zeroth element of the array&#10;     * (assuming the array's length is non-zero) represents the top of the&#10;     * stack, which is the last method invocation in the sequence.  Typically,&#10;     * this is the point at which this throwable was created and thrown.&#10;     * The last element of the array (assuming the array's length is non-zero)&#10;     * represents the bottom of the stack, which is the first method invocation&#10;     * in the sequence.&#10;     *&#10;     * <p>Some virtual machines may, under some circumstances, omit one&#10;     * or more stack frames from the stack trace.  In the extreme case,&#10;     * a virtual machine that has no stack trace information concerning&#10;     * this throwable is permitted to return a zero-length array from this&#10;     * method.  Generally speaking, the array returned by this method will&#10;     * contain one element for every frame that would be printed by&#10;     * {@code printStackTrace}.  Writes to the returned array do not&#10;     * affect future calls to this method.&#10;     *&#10;     * @return an array of stack trace elements representing the stack trace&#10;     *         pertaining to this throwable.&#10;     * @since  1.4&#10;     "
  ]
  node [
    id 21
    label "printStackTrace()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 22
    label "public void setStackTrace(StackTraceElement[] stackTrace)"
    type "method"
    comment "&#10;     * Sets the stack trace elements that will be returned by&#10;     * {@link #getStackTrace()} and printed by {@link #printStackTrace()}&#10;     * and related methods.&#10;     *&#10;     * This method, which is designed for use by RPC frameworks and other&#10;     * advanced systems, allows the client to override the default&#10;     * stack trace that is either generated by {@link #fillInStackTrace()}&#10;     * when a throwable is constructed or deserialized when a throwable is&#10;     * read from a serialization stream.&#10;     *&#10;     * <p>If the stack trace of this {@code Throwable} {@linkplain&#10;     * Throwable#Throwable(String, Throwable, boolean, boolean) is not&#10;     * writable}, calling this method has no effect other than&#10;     * validating its argument.&#10;     *&#10;     * @param   stackTrace the stack trace elements to be associated with&#10;     * this {@code Throwable}.  The specified array is copied by this&#10;     * call; changes in the specified array after the method invocation&#10;     * returns will have no affect on this {@code Throwable}'s stack&#10;     * trace.&#10;     *&#10;     * @throws NullPointerException if {@code stackTrace} is&#10;     *         {@code null} or if any of the elements of&#10;     *         {@code stackTrace} are {@code null}&#10;     *&#10;     * @since  1.4&#10;     "
  ]
  node [
    id 23
    label "getStackTrace()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 24
    label "private static native StackTraceElement[] nativeGetStackTrace(Object stackState)"
    type "method"
    comment " native StackTraceElement getStackTraceElement(int index);"
  ]
  node [
    id 25
    label "private void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException"
    type "method"
    comment "&#10;     * Reads a {@code Throwable} from a stream, enforcing&#10;     * well-formedness constraints on fields.  Null entries and&#10;     * self-pointers are not allowed in the list of {@code&#10;     * suppressedExceptions}.  Null entries are not allowed for stack&#10;     * trace elements.  A null stack trace in the serial form results&#10;     * in a zero-length stack element array. A single-element stack&#10;     * trace whose entry is equal to {@code new StackTraceElement(&#34;&#34;,&#10;     * &#34;&#34;, null, Integer.MIN_VALUE)} results in a {@code null} {@code&#10;     * stackTrace} field.&#10;     *&#10;     * Note that there are no constraints on the value the {@code&#10;     * cause} field can hold; both {@code null} and {@code this} are&#10;     * valid values for the field.&#10;     *&#10;     * @param  s the {@code ObjectInputStream} from which data is read&#10;     * @throws IOException if an I/O error occurs&#10;     * @throws ClassNotFoundException if a serialized class cannot be loaded&#10;     "
  ]
  node [
    id 26
    label "private synchronized void writeObject(ObjectOutputStream s) throws IOException"
    type "method"
    comment "&#10;     * Write a {@code Throwable} object to a stream.&#10;     *&#10;     * A {@code null} stack trace field is represented in the serial&#10;     * form as a one-element array whose element is equal to {@code&#10;     * new StackTraceElement(&#34;&#34;, &#34;&#34;, null, Integer.MIN_VALUE)}.&#10;     *&#10;     * @param  s the {@code ObjectOutputStream} to which data is written&#10;     * @throws IOException if an I/O error occurs&#10;     "
  ]
  node [
    id 27
    label "public final synchronized void addSuppressed(Throwable exception)"
    type "method"
    comment "&#10;     * Appends the specified exception to the exceptions that were&#10;     * suppressed in order to deliver this exception. This method is&#10;     * thread-safe and typically called (automatically and implicitly)&#10;     * by the {@code try}-with-resources statement.&#10;     *&#10;     * <p>The suppression behavior is enabled <em>unless</em> disabled&#10;     * {@linkplain #Throwable(String, Throwable, boolean, boolean) via&#10;     * a constructor}.  When suppression is disabled, this method does&#10;     * nothing other than to validate its argument.&#10;     *&#10;     * <p>Note that when one exception {@linkplain&#10;     * #initCause(Throwable) causes} another exception, the first&#10;     * exception is usually caught and then the second exception is&#10;     * thrown in response.  In other words, there is a causal&#10;     * connection between the two exceptions.&#10;     *&#10;     * In contrast, there are situations where two independent&#10;     * exceptions can be thrown in sibling code blocks, in particular&#10;     * in the {@code try} block of a {@code try}-with-resources&#10;     * statement and the compiler-generated {@code finally} block&#10;     * which closes the resource.&#10;     *&#10;     * In these situations, only one of the thrown exceptions can be&#10;     * propagated.  In the {@code try}-with-resources statement, when&#10;     * there are two such exceptions, the exception originating from&#10;     * the {@code try} block is propagated and the exception from the&#10;     * {@code finally} block is added to the list of exceptions&#10;     * suppressed by the exception from the {@code try} block.  As an&#10;     * exception unwinds the stack, it can accumulate multiple&#10;     * suppressed exceptions.&#10;     *&#10;     * <p>An exception may have suppressed exceptions while also being&#10;     * caused by another exception.  Whether or not an exception has a&#10;     * cause is semantically known at the time of its creation, unlike&#10;     * whether or not an exception will suppress other exceptions&#10;     * which is typically only determined after an exception is&#10;     * thrown.&#10;     *&#10;     * <p>Note that programmer written code is also able to take&#10;     * advantage of calling this method in situations where there are&#10;     * multiple sibling exceptions and only one can be propagated.&#10;     *&#10;     * @param exception the exception to be added to the list of&#10;     *        suppressed exceptions&#10;     * @throws IllegalArgumentException if {@code exception} is this&#10;     *         throwable; a throwable cannot suppress itself.&#10;     * @throws NullPointerException if {@code exception} is {@code null}&#10;     * @since 1.7&#10;     "
  ]
  node [
    id 28
    label "public final synchronized Throwable[] getSuppressed()"
    type "method"
    comment "&#10;     * Returns an array containing all of the exceptions that were&#10;     * suppressed, typically by the {@code try}-with-resources&#10;     * statement, in order to deliver this exception.&#10;     *&#10;     * If no exceptions were suppressed or {@linkplain&#10;     * #Throwable(String, Throwable, boolean, boolean) suppression is&#10;     * disabled}, an empty array is returned.  This method is&#10;     * thread-safe.  Writes to the returned array do not affect future&#10;     * calls to this method.&#10;     *&#10;     * @return an array containing all of the exceptions that were&#10;     *         suppressed to deliver this exception.&#10;     * @since 1.7&#10;     "
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
    target 12
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
    target 26
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
    source 5
    target 7
    type "link"
  ]
  edge [
    source 5
    target 8
    type "link"
  ]
  edge [
    source 10
    target 11
    type "link"
  ]
  edge [
    source 12
    target 13
    type "link"
  ]
  edge [
    source 12
    target 14
    type "link"
  ]
  edge [
    source 20
    target 21
    type "link"
  ]
  edge [
    source 22
    target 13
    type "link"
  ]
  edge [
    source 22
    target 23
    type "link"
  ]
  edge [
    source 22
    target 21
    type "link"
  ]
]
