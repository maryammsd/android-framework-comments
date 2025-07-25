graph [
  directed 1
  node [
    id 0
    label "android.os.AsyncTask"
    type "class"
    comment "&#10; * <p>AsyncTask was intended to enable proper and easy use of the UI thread. However, the most&#10; * common use case was for integrating into UI, and that would cause Context leaks, missed&#10; * callbacks, or crashes on configuration changes. It also has inconsistent behavior on different&#10; * versions of the platform, swallows exceptions from {@code doInBackground}, and does not provide&#10; * much utility over using {@link Executor}s directly.</p>&#10; *&#10; * <p>AsyncTask is designed to be a helper class around {@link Thread} and {@link Handler}&#10; * and does not constitute a generic threading framework. AsyncTasks should ideally be&#10; * used for short operations (a few seconds at the most.) If you need to keep threads&#10; * running for long periods of time, it is highly recommended you use the various APIs&#10; * provided by the <code>java.util.concurrent</code> package such as {@link Executor},&#10; * {@link ThreadPoolExecutor} and {@link FutureTask}.</p>&#10; *&#10; * <p>An asynchronous task is defined by a computation that runs on a background thread and&#10; * whose result is published on the UI thread. An asynchronous task is defined by 3 generic&#10; * types, called <code>Params</code>, <code>Progress</code> and <code>Result</code>,&#10; * and 4 steps, called <code>onPreExecute</code>, <code>doInBackground</code>,&#10; * <code>onProgressUpdate</code> and <code>onPostExecute</code>.</p>&#10; *&#10; * <div class=&#34;special reference&#34;>&#10; * <h3>Developer Guides</h3>&#10; * <p>For more information about using tasks and threads, read the&#10; * <a href=&#34;{@docRoot}guide/components/processes-and-threads.html&#34;>Processes and&#10; * Threads</a> developer guide.</p>&#10; * </div>&#10; *&#10; * <h2>Usage</h2>&#10; * <p>AsyncTask must be subclassed to be used. The subclass will override at least&#10; * one method ({@link #doInBackground}), and most often will override a&#10; * second one ({@link #onPostExecute}.)</p>&#10; *&#10; * <p>Here is an example of subclassing:</p>&#10; * <pre class=&#34;prettyprint&#34;>&#10; * private class DownloadFilesTask extends AsyncTask&#38;lt;URL, Integer, Long&#38;gt; {&#10; *     protected Long doInBackground(URL... urls) {&#10; *         int count = urls.length;&#10; *         long totalSize = 0;&#10; *         for (int i = 0; i &#38;lt; count; i++) {&#10; *             totalSize += Downloader.downloadFile(urls[i]);&#10; *             publishProgress((int) ((i / (float) count) * 100));&#10; *             // Escape early if cancel() is called&#10; *             if (isCancelled()) break;&#10; *         }&#10; *         return totalSize;&#10; *     }&#10; *&#10; *     protected void onProgressUpdate(Integer... progress) {&#10; *         setProgressPercent(progress[0]);&#10; *     }&#10; *&#10; *     protected void onPostExecute(Long result) {&#10; *         showDialog(&#34;Downloaded &#34; + result + &#34; bytes&#34;);&#10; *     }&#10; * }&#10; * </pre>&#10; *&#10; * <p>Once created, a task is executed very simply:</p>&#10; * <pre class=&#34;prettyprint&#34;>&#10; * new DownloadFilesTask().execute(url1, url2, url3);&#10; * </pre>&#10; *&#10; * <h2>AsyncTask's generic types</h2>&#10; * <p>The three types used by an asynchronous task are the following:</p>&#10; * <ol>&#10; *     <li><code>Params</code>, the type of the parameters sent to the task upon&#10; *     execution.</li>&#10; *     <li><code>Progress</code>, the type of the progress units published during&#10; *     the background computation.</li>&#10; *     <li><code>Result</code>, the type of the result of the background&#10; *     computation.</li>&#10; * </ol>&#10; * <p>Not all types are always used by an asynchronous task. To mark a type as unused,&#10; * simply use the type {@link Void}:</p>&#10; * <pre>&#10; * private class MyTask extends AsyncTask&#38;lt;Void, Void, Void&#38;gt; { ... }&#10; * </pre>&#10; *&#10; * <h2>The 4 steps</h2>&#10; * <p>When an asynchronous task is executed, the task goes through 4 steps:</p>&#10; * <ol>&#10; *     <li>{@link #onPreExecute()}, invoked on the UI thread before the task&#10; *     is executed. This step is normally used to setup the task, for instance by&#10; *     showing a progress bar in the user interface.</li>&#10; *     <li>{@link #doInBackground}, invoked on the background thread&#10; *     immediately after {@link #onPreExecute()} finishes executing. This step is used&#10; *     to perform background computation that can take a long time. The parameters&#10; *     of the asynchronous task are passed to this step. The result of the computation must&#10; *     be returned by this step and will be passed back to the last step. This step&#10; *     can also use {@link #publishProgress} to publish one or more units&#10; *     of progress. These values are published on the UI thread, in the&#10; *     {@link #onProgressUpdate} step.</li>&#10; *     <li>{@link #onProgressUpdate}, invoked on the UI thread after a&#10; *     call to {@link #publishProgress}. The timing of the execution is&#10; *     undefined. This method is used to display any form of progress in the user&#10; *     interface while the background computation is still executing. For instance,&#10; *     it can be used to animate a progress bar or show logs in a text field.</li>&#10; *     <li>{@link #onPostExecute}, invoked on the UI thread after the background&#10; *     computation finishes. The result of the background computation is passed to&#10; *     this step as a parameter.</li>&#10; * </ol>&#10; * &#10; * <h2>Cancelling a task</h2>&#10; * <p>A task can be cancelled at any time by invoking {@link #cancel(boolean)}. Invoking&#10; * this method will cause subsequent calls to {@link #isCancelled()} to return true.&#10; * After invoking this method, {@link #onCancelled(Object)}, instead of&#10; * {@link #onPostExecute(Object)} will be invoked after {@link #doInBackground(Object[])}&#10; * returns. To ensure that a task is cancelled as quickly as possible, you should always&#10; * check the return value of {@link #isCancelled()} periodically from&#10; * {@link #doInBackground(Object[])}, if possible (inside a loop for instance.)</p>&#10; *&#10; * <h2>Threading rules</h2>&#10; * <p>There are a few threading rules that must be followed for this class to&#10; * work properly:</p>&#10; * <ul>&#10; *     <li>The AsyncTask class must be loaded on the UI thread. This is done&#10; *     automatically as of {@link android.os.Build.VERSION_CODES#JELLY_BEAN}.</li>&#10; *     <li>The task instance must be created on the UI thread.</li>&#10; *     <li>{@link #execute} must be invoked on the UI thread.</li>&#10; *     <li>Do not call {@link #onPreExecute()}, {@link #onPostExecute},&#10; *     {@link #doInBackground}, {@link #onProgressUpdate} manually.</li>&#10; *     <li>The task can be executed only once (an exception will be thrown if&#10; *     a second execution is attempted.)</li>&#10; * </ul>&#10; *&#10; * <h2>Memory observability</h2>&#10; * <p>AsyncTask guarantees that all callback calls are synchronized to ensure the following&#10; * without explicit synchronizations.</p>&#10; * <ul>&#10; *     <li>The memory effects of {@link #onPreExecute}, and anything else&#10; *     executed before the call to {@link #execute}, including the construction&#10; *     of the AsyncTask object, are visible to {@link #doInBackground}.&#10; *     <li>The memory effects of {@link #doInBackground} are visible to&#10; *     {@link #onPostExecute}.&#10; *     <li>Any memory effects of {@link #doInBackground} preceding a call&#10; *     to {@link #publishProgress} are visible to the corresponding&#10; *     {@link #onProgressUpdate} call. (But {@link #doInBackground} continues to&#10; *     run, and care needs to be taken that later updates in {@link #doInBackground}&#10; *     do not interfere with an in-progress {@link #onProgressUpdate} call.)&#10; *     <li>Any memory effects preceding a call to {@link #cancel} are visible&#10; *     after a call to {@link #isCancelled} that returns true as a result, or&#10; *     during and after a resulting call to {@link #onCancelled}.&#10; * </ul>&#10; *&#10; * <h2>Order of execution</h2>&#10; * <p>When first introduced, AsyncTasks were executed serially on a single background&#10; * thread. Starting with {@link android.os.Build.VERSION_CODES#DONUT}, this was changed&#10; * to a pool of threads allowing multiple tasks to operate in parallel. Starting with&#10; * {@link android.os.Build.VERSION_CODES#HONEYCOMB}, tasks are executed on a single&#10; * thread to avoid common application errors caused by parallel execution.</p>&#10; * <p>If you truly want parallel execution, you can invoke&#10; * {@link #executeOnExecutor(java.util.concurrent.Executor, Object[])} with&#10; * {@link #THREAD_POOL_EXECUTOR}.</p>&#10; *&#10; * @deprecated Use the standard <code>java.util.concurrent</code> or&#10; *   <a href=&#34;https://developer.android.com/topic/libraries/architecture/coroutines&#34;>&#10; *   Kotlin concurrency utilities</a> instead.&#10; "
  ]
  node [
    id 1
    label "public final Status getStatus()"
    type "method"
    comment "&#10;     * Returns the current status of this task.&#10;     *&#10;     * @return The current status.&#10;     "
  ]
  node [
    id 2
    label "protected abstract Result doInBackground(Params... params)"
    type "method"
    comment "&#10;     * Override this method to perform a computation on a background thread. The&#10;     * specified parameters are the parameters passed to {@link #execute}&#10;     * by the caller of this task.&#10;     *&#10;     * This will normally run on a background thread. But to better&#10;     * support testing frameworks, it is recommended that this also tolerates&#10;     * direct execution on the foreground thread, as part of the {@link #execute} call.&#10;     *&#10;     * This method can call {@link #publishProgress} to publish updates&#10;     * on the UI thread.&#10;     *&#10;     * @param params The parameters of the task.&#10;     *&#10;     * @return A result, defined by the subclass of this task.&#10;     *&#10;     * @see #onPreExecute()&#10;     * @see #onPostExecute&#10;     * @see #publishProgress&#10;     "
  ]
  node [
    id 3
    label "execute"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "publishProgress"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 5
    label "protected void onPreExecute()"
    type "method"
    comment "&#10;     * Runs on the UI thread before {@link #doInBackground}.&#10;     * Invoked directly by {@link #execute} or {@link #executeOnExecutor}.&#10;     * The default version does nothing.&#10;     *&#10;     * @see #onPostExecute&#10;     * @see #doInBackground&#10;     "
  ]
  node [
    id 6
    label "doInBackground"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 7
    label "executeOnExecutor"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 8
    label "protected void onPostExecute(Result result)"
    type "method"
    comment "&#10;     * <p>Runs on the UI thread after {@link #doInBackground}. The&#10;     * specified result is the value returned by {@link #doInBackground}.&#10;     * To better support testing frameworks, it is recommended that this be&#10;     * written to tolerate direct execution as part of the execute() call.&#10;     * The default version does nothing.</p>&#10;     * &#10;     * <p>This method won't be invoked if the task was cancelled.</p>&#10;     *&#10;     * @param result The result of the operation computed by {@link #doInBackground}.&#10;     *&#10;     * @see #onPreExecute&#10;     * @see #doInBackground&#10;     * @see #onCancelled(Object) &#10;     "
  ]
  node [
    id 9
    label "protected void onProgressUpdate(Progress... values)"
    type "method"
    comment "&#10;     * Runs on the UI thread after {@link #publishProgress} is invoked.&#10;     * The specified values are the values passed to {@link #publishProgress}.&#10;     * The default version does nothing.&#10;     *&#10;     * @param values The values indicating progress.&#10;     *&#10;     * @see #publishProgress&#10;     * @see #doInBackground&#10;     "
  ]
  node [
    id 10
    label "protected void onCancelled(Result result)"
    type "method"
    comment "&#10;     * <p>Runs on the UI thread after {@link #cancel(boolean)} is invoked and&#10;     * {@link #doInBackground(Object[])} has finished.</p>&#10;     * &#10;     * <p>The default implementation simply invokes {@link #onCancelled()} and&#10;     * ignores the result. If you write your own implementation, do not call&#10;     * <code>super.onCancelled(result)</code>.</p>&#10;     *&#10;     * @param result The result, if any, computed in&#10;     *               {@link #doInBackground(Object[])}, can be null&#10;     * &#10;     * @see #cancel(boolean)&#10;     * @see #isCancelled()&#10;     "
  ]
  node [
    id 11
    label "cancel(boolean)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 12
    label "onCancelled()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 13
    label "doInBackground(Object"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 14
    label "protected void onCancelled()"
    type "method"
    comment "&#10;     * <p>Applications should preferably override {@link #onCancelled(Object)}.&#10;     * This method is invoked by the default implementation of&#10;     * {@link #onCancelled(Object)}.&#10;     * The default version does nothing.</p>&#10;     * &#10;     * <p>Runs on the UI thread after {@link #cancel(boolean)} is invoked and&#10;     * {@link #doInBackground(Object[])} has finished.</p>&#10;     *&#10;     * @see #onCancelled(Object) &#10;     * @see #cancel(boolean)&#10;     * @see #isCancelled()&#10;     "
  ]
  node [
    id 15
    label "onCancelled(Object)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 16
    label "public final boolean isCancelled()"
    type "method"
    comment "&#10;     * Returns <tt>true</tt> if this task was cancelled before it completed&#10;     * normally. If you are calling {@link #cancel(boolean)} on the task,&#10;     * the value returned by this method should be checked periodically from&#10;     * {@link #doInBackground(Object[])} to end the task as soon as possible.&#10;     *&#10;     * @return <tt>true</tt> if task was cancelled before it completed&#10;     *&#10;     * @see #cancel(boolean)&#10;     "
  ]
  node [
    id 17
    label "public final boolean cancel(boolean mayInterruptIfRunning)"
    type "method"
    comment "&#10;     * <p>Attempts to cancel execution of this task.  This attempt will&#10;     * fail if the task has already completed, already been cancelled,&#10;     * or could not be cancelled for some other reason. If successful,&#10;     * and this task has not started when <tt>cancel</tt> is called,&#10;     * this task should never run. If the task has already started,&#10;     * then the <tt>mayInterruptIfRunning</tt> parameter determines&#10;     * whether the thread executing this task should be interrupted in&#10;     * an attempt to stop the task.</p>&#10;     * &#10;     * <p>Calling this method will result in {@link #onCancelled(Object)} being&#10;     * invoked on the UI thread after {@link #doInBackground(Object[])} returns.&#10;     * Calling this method guarantees that onPostExecute(Object) is never&#10;     * subsequently invoked, even if <tt>cancel</tt> returns false, but&#10;     * {@link #onPostExecute} has not yet run.  To finish the&#10;     * task as early as possible, check {@link #isCancelled()} periodically from&#10;     * {@link #doInBackground(Object[])}.</p>&#10;     *&#10;     * <p>This only requests cancellation. It never waits for a running&#10;     * background task to terminate, even if <tt>mayInterruptIfRunning</tt> is&#10;     * true.</p>&#10;     *&#10;     * @param mayInterruptIfRunning <tt>true</tt> if the thread executing this&#10;     *        task should be interrupted; otherwise, in-progress tasks are allowed&#10;     *        to complete.&#10;     *&#10;     * @return <tt>false</tt> if the task could not be cancelled,&#10;     *         typically because it has already completed normally;&#10;     *         <tt>true</tt> otherwise&#10;     *&#10;     * @see #isCancelled()&#10;     * @see #onCancelled(Object)&#10;     "
  ]
  node [
    id 18
    label "onPostExecute"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 19
    label "isCancelled()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 20
    label "public final Result get() throws InterruptedException, ExecutionException"
    type "method"
    comment "&#10;     * Waits if necessary for the computation to complete, and then&#10;     * retrieves its result.&#10;     *&#10;     * @return The computed result.&#10;     *&#10;     * @throws CancellationException If the computation was cancelled.&#10;     * @throws ExecutionException If the computation threw an exception.&#10;     * @throws InterruptedException If the current thread was interrupted&#10;     *         while waiting.&#10;     "
  ]
  node [
    id 21
    label "public final Result get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException"
    type "method"
    comment "&#10;     * Waits if necessary for at most the given time for the computation&#10;     * to complete, and then retrieves its result.&#10;     *&#10;     * @param timeout Time to wait before cancelling the operation.&#10;     * @param unit The time unit for the timeout.&#10;     *&#10;     * @return The computed result.&#10;     *&#10;     * @throws CancellationException If the computation was cancelled.&#10;     * @throws ExecutionException If the computation threw an exception.&#10;     * @throws InterruptedException If the current thread was interrupted&#10;     *         while waiting.&#10;     * @throws TimeoutException If the wait timed out.&#10;     "
  ]
  node [
    id 22
    label "public final AsyncTask<Params, Progress, Result> execute(Params... params)"
    type "method"
    comment "&#10;     * Executes the task with the specified parameters. The task returns&#10;     * itself (this) so that the caller can keep a reference to it.&#10;     * &#10;     * <p>Note: this function schedules the task on a queue for a single background&#10;     * thread or pool of threads depending on the platform version.  When first&#10;     * introduced, AsyncTasks were executed serially on a single background thread.&#10;     * Starting with {@link android.os.Build.VERSION_CODES#DONUT}, this was changed&#10;     * to a pool of threads allowing multiple tasks to operate in parallel. Starting&#10;     * {@link android.os.Build.VERSION_CODES#HONEYCOMB}, tasks are back to being&#10;     * executed on a single thread to avoid common application errors caused&#10;     * by parallel execution.  If you truly want parallel execution, you can use&#10;     * the {@link #executeOnExecutor} version of this method&#10;     * with {@link #THREAD_POOL_EXECUTOR}; however, see commentary there for warnings&#10;     * on its use.&#10;     *&#10;     * <p>This method must be invoked on the UI thread.&#10;     *&#10;     * @param params The parameters of the task.&#10;     *&#10;     * @return This instance of AsyncTask.&#10;     *&#10;     * @throws IllegalStateException If {@link #getStatus()} returns either&#10;     *         {@link AsyncTask.Status#RUNNING} or {@link AsyncTask.Status#FINISHED}.&#10;     *&#10;     * @see #executeOnExecutor(java.util.concurrent.Executor, Object[])&#10;     * @see #execute(Runnable)&#10;     "
  ]
  node [
    id 23
    label "DONUT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 24
    label "THREAD_POOL_EXECUTOR"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 25
    label "HONEYCOMB"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 26
    label "RUNNING"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 27
    label "FINISHED"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 28
    label "getStatus()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 29
    label "public final AsyncTask<Params, Progress, Result> executeOnExecutor(Executor exec, Params... params)"
    type "method"
    comment "&#10;     * Executes the task with the specified parameters. The task returns&#10;     * itself (this) so that the caller can keep a reference to it.&#10;     * &#10;     * <p>This method is typically used with {@link #THREAD_POOL_EXECUTOR} to&#10;     * allow multiple tasks to run in parallel on a pool of threads managed by&#10;     * AsyncTask, however you can also use your own {@link Executor} for custom&#10;     * behavior.&#10;     * &#10;     * <p><em>Warning:</em> Allowing multiple tasks to run in parallel from&#10;     * a thread pool is generally <em>not</em> what one wants, because the order&#10;     * of their operation is not defined.  For example, if these tasks are used&#10;     * to modify any state in common (such as writing a file due to a button click),&#10;     * there are no guarantees on the order of the modifications.&#10;     * Without careful work it is possible in rare cases for the newer version&#10;     * of the data to be over-written by an older one, leading to obscure data&#10;     * loss and stability issues.  Such changes are best&#10;     * executed in serial; to guarantee such work is serialized regardless of&#10;     * platform version you can use this function with {@link #SERIAL_EXECUTOR}.&#10;     *&#10;     * <p>This method must be invoked on the UI thread.&#10;     *&#10;     * @param exec The executor to use.  {@link #THREAD_POOL_EXECUTOR} is available as a&#10;     *              convenient process-wide thread pool for tasks that are loosely coupled.&#10;     * @param params The parameters of the task.&#10;     *&#10;     * @return This instance of AsyncTask.&#10;     *&#10;     * @throws IllegalStateException If {@link #getStatus()} returns either&#10;     *         {@link AsyncTask.Status#RUNNING} or {@link AsyncTask.Status#FINISHED}.&#10;     *&#10;     * @see #execute(Object[])&#10;     "
  ]
  node [
    id 30
    label "java.util.concurrent.Executor"
    type "class"
    comment "&#10; * An object that executes submitted {@link Runnable} tasks. This&#10; * interface provides a way of decoupling task submission from the&#10; * mechanics of how each task will be run, including details of thread&#10; * use, scheduling, etc.  An {@code Executor} is normally used&#10; * instead of explicitly creating threads. For example, rather than&#10; * invoking {@code new Thread(new RunnableTask()).start()} for each&#10; * of a set of tasks, you might use:&#10; *&#10; * <pre> {@code&#10; * Executor executor = anExecutor();&#10; * executor.execute(new RunnableTask1());&#10; * executor.execute(new RunnableTask2());&#10; * ...}</pre>&#10; *&#10; * However, the {@code Executor} interface does not strictly require&#10; * that execution be asynchronous. In the simplest case, an executor&#10; * can run the submitted task immediately in the caller's thread:&#10; *&#10; * <pre> {@code&#10; * class DirectExecutor implements Executor {&#10; *   public void execute(Runnable r) {&#10; *     r.run();&#10; *   }&#10; * }}</pre>&#10; *&#10; * More typically, tasks are executed in some thread other than the&#10; * caller's thread.  The executor below spawns a new thread for each&#10; * task.&#10; *&#10; * <pre> {@code&#10; * class ThreadPerTaskExecutor implements Executor {&#10; *   public void execute(Runnable r) {&#10; *     new Thread(r).start();&#10; *   }&#10; * }}</pre>&#10; *&#10; * Many {@code Executor} implementations impose some sort of&#10; * limitation on how and when tasks are scheduled.  The executor below&#10; * serializes the submission of tasks to a second executor,&#10; * illustrating a composite executor.&#10; *&#10; * <pre> {@code&#10; * class SerialExecutor implements Executor {&#10; *   final Queue<Runnable> tasks = new ArrayDeque<>();&#10; *   final Executor executor;&#10; *   Runnable active;&#10; *&#10; *   SerialExecutor(Executor executor) {&#10; *     this.executor = executor;&#10; *   }&#10; *&#10; *   public synchronized void execute(Runnable r) {&#10; *     tasks.add(() -> {&#10; *       try {&#10; *         r.run();&#10; *       } finally {&#10; *         scheduleNext();&#10; *       }&#10; *     });&#10; *     if (active == null) {&#10; *       scheduleNext();&#10; *     }&#10; *   }&#10; *&#10; *   protected synchronized void scheduleNext() {&#10; *     if ((active = tasks.poll()) != null) {&#10; *       executor.execute(active);&#10; *     }&#10; *   }&#10; * }}</pre>&#10; *&#10; * The {@code Executor} implementations provided in this package&#10; * implement {@link ExecutorService}, which is a more extensive&#10; * interface.  The {@link ThreadPoolExecutor} class provides an&#10; * extensible thread pool implementation. The {@link Executors} class&#10; * provides convenient factory methods for these Executors.&#10; *&#10; * <p>Memory consistency effects: Actions in a thread prior to&#10; * submitting a {@code Runnable} object to an {@code Executor}&#10; * <a href=&#34;package-summary.html#MemoryVisibility&#34;><i>happen-before</i></a>&#10; * its execution begins, perhaps in another thread.&#10; *&#10; * @since 1.5&#10; * @author Doug Lea&#10; "
  ]
  node [
    id 31
    label " void execute(Runnable command)"
    type "method"
    comment "&#10;     * Executes the given command at some time in the future.  The command&#10;     * may execute in a new thread, in a pooled thread, or in the calling&#10;     * thread, at the discretion of the {@code Executor} implementation.&#10;     *&#10;     * @param command the runnable task&#10;     * @throws RejectedExecutionException if this task cannot be&#10;     * accepted for execution&#10;     * @throws NullPointerException if command is null&#10;     "
  ]
  node [
    id 32
    label "SERIAL_EXECUTOR"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 33
    label "public static void execute(Runnable runnable)"
    type "method"
    comment "&#10;     * Convenience version of {@link #execute(Object...)} for use with&#10;     * a simple Runnable object. See {@link #execute(Object[])} for more&#10;     * information on the order of execution.&#10;     *&#10;     * @see #execute(Object[])&#10;     * @see #executeOnExecutor(java.util.concurrent.Executor, Object[])&#10;     "
  ]
  node [
    id 34
    label "execute(Object...)"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 35
    label "execute(Object"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 36
    label "protected final void publishProgress(Progress... values)"
    type "method"
    comment "&#10;     * This method can be invoked from {@link #doInBackground} to&#10;     * publish updates on the UI thread while the background computation is&#10;     * still running. Each call to this method will trigger the execution of&#10;     * {@link #onProgressUpdate} on the UI thread.&#10;     *&#10;     * {@link #onProgressUpdate} will not be called if the task has been&#10;     * canceled.&#10;     *&#10;     * @param values The progress values to update the UI with.&#10;     *&#10;     * @see #onProgressUpdate&#10;     * @see #doInBackground&#10;     "
  ]
  node [
    id 37
    label "onProgressUpdate"
    type "link-shadow"
    comment "No comment available"
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
    target 14
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
    target 29
    type "child"
  ]
  edge [
    source 0
    target 33
    type "child"
  ]
  edge [
    source 0
    target 36
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
    source 5
    target 3
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
    source 8
    target 6
    type "link"
  ]
  edge [
    source 9
    target 4
    type "link"
  ]
  edge [
    source 10
    target 11
    type "link"
  ]
  edge [
    source 10
    target 12
    type "link"
  ]
  edge [
    source 10
    target 13
    type "link"
  ]
  edge [
    source 14
    target 11
    type "link"
  ]
  edge [
    source 14
    target 15
    type "link"
  ]
  edge [
    source 14
    target 13
    type "link"
  ]
  edge [
    source 16
    target 11
    type "link"
  ]
  edge [
    source 16
    target 13
    type "link"
  ]
  edge [
    source 17
    target 15
    type "link"
  ]
  edge [
    source 17
    target 13
    type "link"
  ]
  edge [
    source 17
    target 18
    type "link"
  ]
  edge [
    source 17
    target 19
    type "link"
  ]
  edge [
    source 22
    target 23
    type "link"
  ]
  edge [
    source 22
    target 24
    type "link"
  ]
  edge [
    source 22
    target 25
    type "link"
  ]
  edge [
    source 22
    target 26
    type "link"
  ]
  edge [
    source 22
    target 27
    type "link"
  ]
  edge [
    source 22
    target 28
    type "link"
  ]
  edge [
    source 22
    target 7
    type "link"
  ]
  edge [
    source 29
    target 24
    type "link"
  ]
  edge [
    source 29
    target 30
    type "link"
  ]
  edge [
    source 29
    target 26
    type "link"
  ]
  edge [
    source 29
    target 32
    type "link"
  ]
  edge [
    source 29
    target 27
    type "link"
  ]
  edge [
    source 29
    target 28
    type "link"
  ]
  edge [
    source 30
    target 31
    type "child"
  ]
  edge [
    source 33
    target 34
    type "link"
  ]
  edge [
    source 33
    target 35
    type "link"
  ]
  edge [
    source 36
    target 37
    type "link"
  ]
  edge [
    source 36
    target 6
    type "link"
  ]
]
