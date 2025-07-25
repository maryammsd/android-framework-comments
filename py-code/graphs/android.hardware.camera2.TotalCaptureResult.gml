graph [
  directed 1
  node [
    id 0
    label "android.hardware.camera2.TotalCaptureResult"
    type "class"
    comment "&#10; * <p>The total assembled results of a single image capture from the image sensor.</p>&#10; *&#10; * <p>Contains the final configuration for the capture hardware (sensor, lens,&#10; * flash), the processing pipeline, the control algorithms, and the output&#10; * buffers.</p>&#10; *&#10; * <p>A {@code TotalCaptureResult} is produced by a {@link CameraDevice} after processing a&#10; * {@link CaptureRequest}. All properties listed for capture requests can also&#10; * be queried on the capture result, to determine the final values used for&#10; * capture. The result also includes additional metadata about the state of the&#10; * camera device during the capture.</p>&#10; *&#10; * <p>All properties returned by {@link CameraCharacteristics#getAvailableCaptureResultKeys()}&#10; * are available (that is {@link CaptureResult#get} will return non-{@code null}, if and only if&#10; * that key that was enabled by the request. A few keys such as&#10; * {@link CaptureResult#STATISTICS_FACES} are disabled by default unless enabled with a switch (such&#10; * as {@link CaptureRequest#STATISTICS_FACE_DETECT_MODE}). Refer to each key documentation on&#10; * a case-by-case basis.</p>&#10; *&#10; * <p>For a logical multi-camera device, if the CaptureRequest contains a surface for an underlying&#10; * physical camera, the corresponding {@link TotalCaptureResult} object will include the metadata&#10; * for that physical camera. And the mapping between the physical camera id and result metadata&#10; * can be accessed via {@link #getPhysicalCameraResults}. If all requested surfaces are for the&#10; * logical camera, no metadata for physical camera will be included.</p>&#10; *&#10; * <p>{@link TotalCaptureResult} objects are immutable.</p>&#10; *&#10; * @see CameraCaptureSession.CaptureCallback#onCaptureCompleted&#10; "
  ]
  node [
    id 1
    label "public List<CaptureResult> getPartialResults()"
    type "method"
    comment "&#10;     * Get the read-only list of partial results that compose this total result.&#10;     *&#10;     * <p>The list is returned is unmodifiable; attempting to modify it will result in a&#10;     * {@code UnsupportedOperationException} being thrown.</p>&#10;     *&#10;     * <p>The list size will be inclusive between {@code 0} and&#10;     * {@link CameraCharacteristics#REQUEST_PARTIAL_RESULT_COUNT}, with elements in ascending order&#10;     * of when {@link CameraCaptureSession.CaptureCallback#onCaptureProgressed} was invoked.</p>&#10;     *&#10;     * @return unmodifiable list of partial results&#10;     "
  ]
  node [
    id 2
    label "REQUEST_PARTIAL_RESULT_COUNT"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "onCaptureProgressed"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 4
    label "public Map<String, TotalCaptureResult> getPhysicalCameraTotalResults()"
    type "method"
    comment "&#10;     * Get the map between physical camera ids and their total capture result metadata&#10;     *&#10;     * <p>This function can be called for logical multi-camera devices, which are devices that have&#10;     * REQUEST_AVAILABLE_CAPABILITIES_LOGICAL_MULTI_CAMERA capability.</p>&#10;     *&#10;     * <p>If one or more streams from the underlying physical cameras were requested by the&#10;     * corresponding capture request, this function returns the total result metadata for those&#10;     * physical cameras. Otherwise, an empty map is returned.</p>&#10;     *&#10;     * <p>This function replaces the deprecated {@link #getPhysicalCameraResults}, and its return&#10;     * value is a map of TotalCaptureResult rather than CaptureResult. </p>&#10;     *&#10;     * <p>To reprocess an image from a physical camera stream, typically returned from a&#10;     * {@link MultiResolutionImageReader}, the application must look up this map to get the {@link&#10;     * TotalCaptureResult} from the physical camera and pass it to {@link&#10;     * CameraDevice#createReprocessCaptureRequest}.</p>&#10;     *&#10;     * @return unmodifiable map between physical camera ids and their total capture result metadata&#10;     "
  ]
  node [
    id 5
    label "createReprocessCaptureRequest"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 6
    label "MultiResolutionImageReader"
  ]
  node [
    id 7
    label "getPhysicalCameraResults"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 8
    label "TotalCaptureResult"
  ]
  edge [
    source 0
    target 1
    type "child"
  ]
  edge [
    source 0
    target 4
    type "child"
  ]
  edge [
    source 1
    target 2
    type "link"
  ]
  edge [
    source 1
    target 3
    type "link"
  ]
  edge [
    source 4
    target 5
    type "link"
  ]
  edge [
    source 4
    target 6
    type "link"
  ]
  edge [
    source 4
    target 7
    type "link"
  ]
  edge [
    source 4
    target 8
    type "link"
  ]
]
