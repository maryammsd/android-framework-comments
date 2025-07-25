graph [
  directed 1
  node [
    id 0
    label "android.view.SurfaceHolder"
    type "class"
    comment "&#10; * Abstract interface to someone holding a display surface.  Allows you to&#10; * control the surface size and format, edit the pixels in the surface, and&#10; * monitor changes to the surface.  This interface is typically available&#10; * through the {@link SurfaceView} class.&#10; *&#10; * <p>When using this interface from a thread other than the one running&#10; * its {@link SurfaceView}, you will want to carefully read the&#10; * methods&#10; * {@link #lockCanvas} and {@link Callback#surfaceCreated Callback.surfaceCreated()}.&#10; "
  ]
  node [
    id 1
    label "public void addCallback(Callback callback)"
    type "method"
    comment "&#10;     * Add a Callback interface for this holder.  There can several Callback&#10;     * interfaces associated with a holder.&#10;     *&#10;     * @param callback The new Callback interface.&#10;     "
  ]
  node [
    id 2
    label "public void removeCallback(Callback callback)"
    type "method"
    comment "&#10;     * Removes a previously added Callback interface from this holder.&#10;     *&#10;     * @param callback The Callback interface to remove.&#10;     "
  ]
  node [
    id 3
    label "public boolean isCreating()"
    type "method"
    comment "&#10;     * Use this method to find out if the surface is in the process of being&#10;     * created from Callback methods. This is intended to be used with&#10;     * {@link Callback#surfaceChanged}.&#10;     *&#10;     * @return true if the surface is in the process of being created.&#10;     "
  ]
  node [
    id 4
    label "surfaceChanged"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 5
    label "public void setFixedSize(int width, int height)"
    type "method"
    comment "&#10;     * Make the surface a fixed size.  It will never change from this size.&#10;     * When working with a {@link SurfaceView}, this must be called from the&#10;     * same thread running the SurfaceView's window.&#10;     *&#10;     * @param width The surface's width.&#10;     * @param height The surface's height.&#10;     "
  ]
  node [
    id 6
    label "SurfaceView"
  ]
  node [
    id 7
    label "public void setSizeFromLayout()"
    type "method"
    comment "&#10;     * Allow the surface to resized based on layout of its container (this is&#10;     * the default).  When this is enabled, you should monitor&#10;     * {@link Callback#surfaceChanged} for changes to the size of the surface.&#10;     * When working with a {@link SurfaceView}, this must be called from the&#10;     * same thread running the SurfaceView's window.&#10;     "
  ]
  node [
    id 8
    label "public void setFormat(int format)"
    type "method"
    comment "&#10;     * Set the desired PixelFormat of the surface.  The default is OPAQUE.&#10;     * When working with a {@link SurfaceView}, this must be called from the&#10;     * same thread running the SurfaceView's window.&#10;     *&#10;     * @param format A constant from PixelFormat.&#10;     *&#10;     * @see android.graphics.PixelFormat&#10;     "
  ]
  node [
    id 9
    label "public void setKeepScreenOn(boolean screenOn)"
    type "method"
    comment "&#10;     * Enable or disable option to keep the screen turned on while this&#10;     * surface is displayed.  The default is false, allowing it to turn off.&#10;     * This is safe to call from any thread.&#10;     *&#10;     * @param screenOn Set to true to force the screen to stay on, false&#10;     * to allow it to turn off.&#10;     "
  ]
  node [
    id 10
    label "public Canvas lockCanvas()"
    type "method"
    comment "&#10;     * Start editing the pixels in the surface.  The returned Canvas can be used&#10;     * to draw into the surface's bitmap.  A null is returned if the surface has&#10;     * not been created or otherwise cannot be edited.  You will usually need&#10;     * to implement {@link Callback#surfaceCreated Callback.surfaceCreated}&#10;     * to find out when the Surface is available for use.&#10;     *&#10;     * <p>The content of the Surface is never preserved between unlockCanvas() and&#10;     * lockCanvas(), for this reason, every pixel within the Surface area&#10;     * must be written. The only exception to this rule is when a dirty&#10;     * rectangle is specified, in which case, non-dirty pixels will be&#10;     * preserved.&#10;     *&#10;     * <p>If you call this repeatedly when the Surface is not ready (before&#10;     * {@link Callback#surfaceCreated Callback.surfaceCreated} or after&#10;     * {@link Callback#surfaceDestroyed Callback.surfaceDestroyed}), your calls&#10;     * will be throttled to a slow rate in order to avoid consuming CPU.&#10;     *&#10;     * <p>If null is not returned, this function internally holds a lock until&#10;     * the corresponding {@link #unlockCanvasAndPost} call, preventing&#10;     * {@link SurfaceView} from creating, destroying, or modifying the surface&#10;     * while it is being drawn.  This can be more convenient than accessing&#10;     * the Surface directly, as you do not need to do special synchronization&#10;     * with a drawing thread in {@link Callback#surfaceDestroyed&#10;     * Callback.surfaceDestroyed}.&#10;     *&#10;     * @return Canvas Use to draw into the surface.&#10;     "
  ]
  node [
    id 11
    label "surfaceDestroyed"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 12
    label "surfaceCreated"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 13
    label "surfaceDestroyedCallback.surfaceDestroyed"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 14
    label "unlockCanvasAndPost"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 15
    label "public Canvas lockCanvas(Rect dirty)"
    type "method"
    comment "&#10;     * Just like {@link #lockCanvas()} but allows specification of a dirty rectangle.&#10;     * Every&#10;     * pixel within that rectangle must be written; however pixels outside&#10;     * the dirty rectangle will be preserved by the next call to lockCanvas().&#10;     *&#10;     * @see android.view.SurfaceHolder#lockCanvas&#10;     *&#10;     * @param dirty Area of the Surface that will be modified.&#10;     * @return Canvas Use to draw into the surface.&#10;     "
  ]
  node [
    id 16
    label "lockCanvas()"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 17
    label " Canvas lockHardwareCanvas()"
    type "method"
    comment "&#10;     * <p>Just like {@link #lockCanvas()} but the returned canvas is hardware-accelerated.&#10;     *&#10;     * <p>See the <a href=&#34;{@docRoot}guide/topics/graphics/hardware-accel.html#unsupported&#34;>&#10;     * unsupported drawing operations</a> for a list of what is and isn't&#10;     * supported in a hardware-accelerated canvas.&#10;     *&#10;     * @return Canvas Use to draw into the surface.&#10;     * @throws IllegalStateException If the canvas cannot be locked.&#10;     "
  ]
  node [
    id 18
    label "public void unlockCanvasAndPost(Canvas canvas)"
    type "method"
    comment "&#10;     * Finish editing pixels in the surface.  After this call, the surface's&#10;     * current pixels will be shown on the screen, but its content is lost,&#10;     * in particular there is no guarantee that the content of the Surface&#10;     * will remain unchanged when lockCanvas() is called again.&#10;     *&#10;     * @see #lockCanvas()&#10;     *&#10;     * @param canvas The Canvas previously returned by lockCanvas().&#10;     "
  ]
  node [
    id 19
    label "public Rect getSurfaceFrame()"
    type "method"
    comment "&#10;     * Retrieve the current size of the surface.  Note: do not modify the&#10;     * returned Rect.  This is only safe to call from the thread of&#10;     * {@link SurfaceView}'s window, or while inside of&#10;     * {@link #lockCanvas()}.&#10;     *&#10;     * @return Rect The surface's dimensions.  The left and top are always 0.&#10;     "
  ]
  node [
    id 20
    label "public Surface getSurface()"
    type "method"
    comment "&#10;     * Direct access to the surface object.  The Surface may not always be&#10;     * available -- for example when using a {@link SurfaceView} the holder's&#10;     * Surface is not created until the view has been attached to the window&#10;     * manager and performed a layout in order to determine the dimensions&#10;     * and screen position of the Surface.    You will thus usually need&#10;     * to implement {@link Callback#surfaceCreated Callback.surfaceCreated}&#10;     * to find out when the Surface is available for use.&#10;     *&#10;     * <p>Note that if you directly access the Surface from another thread,&#10;     * it is critical that you correctly implement&#10;     * {@link Callback#surfaceCreated Callback.surfaceCreated} and&#10;     * {@link Callback#surfaceDestroyed Callback.surfaceDestroyed} to ensure&#10;     * that thread only accesses the Surface while it is valid, and that the&#10;     * Surface does not get destroyed while the thread is using it.&#10;     *&#10;     * <p>This method is intended to be used by frameworks which often need&#10;     * direct access to the Surface object (usually to pass it to native code).&#10;     *&#10;     * @return Surface The surface.&#10;     "
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
    target 15
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
    source 7
    target 4
    type "link"
  ]
  edge [
    source 7
    target 6
    type "link"
  ]
  edge [
    source 8
    target 6
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
    source 10
    target 14
    type "link"
  ]
  edge [
    source 10
    target 6
    type "link"
  ]
  edge [
    source 15
    target 16
    type "link"
  ]
  edge [
    source 17
    target 16
    type "link"
  ]
  edge [
    source 19
    target 16
    type "link"
  ]
  edge [
    source 19
    target 6
    type "link"
  ]
  edge [
    source 20
    target 11
    type "link"
  ]
  edge [
    source 20
    target 12
    type "link"
  ]
  edge [
    source 20
    target 6
    type "link"
  ]
]
