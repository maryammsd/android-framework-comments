graph [
  directed 1
  node [
    id 0
    label "android.widget.EditText"
    type "class"
    comment "&#10; * A user interface element for entering and modifying text.&#10; * When you define an edit text widget, you must specify the&#10; * {@link android.R.styleable#TextView_inputType}&#10; * attribute. For example, for plain text input set inputType to &#34;text&#34;:&#10; * <p>&#10; * <pre>&#10; * &#38;lt;EditText&#10; *     android:id=&#34;@+id/plain_text_input&#34;&#10; *     android:layout_height=&#34;wrap_content&#34;&#10; *     android:layout_width=&#34;match_parent&#34;&#10; *     android:inputType=&#34;text&#34;/&#38;gt;</pre>&#10; *&#10; * Choosing the input type configures the keyboard type that is shown, acceptable characters,&#10; * and appearance of the edit text.&#10; * For example, if you want to accept a secret number, like a unique pin or serial number,&#10; * you can set inputType to &#34;numericPassword&#34;.&#10; * An inputType of &#34;numericPassword&#34; results in an edit text that accepts numbers only,&#10; * shows a numeric keyboard when focused, and masks the text that is entered for privacy.&#10; * <p>&#10; * See the <a href=&#34;{@docRoot}guide/topics/ui/controls/text.html&#34;>Text Fields</a>&#10; * guide for examples of other&#10; * {@link android.R.styleable#TextView_inputType} settings.&#10; * </p>&#10; * <p>You also can receive callbacks as a user changes text by&#10; * adding a {@link android.text.TextWatcher} to the edit text.&#10; * This is useful when you want to add auto-save functionality as changes are made,&#10; * or validate the format of user input, for example.&#10; * You add a text watcher using the {@link TextView#addTextChangedListener} method.&#10; * </p>&#10; * <p>&#10; * This widget does not support auto-sizing text.&#10; * <p>&#10; * <b>XML attributes</b>&#10; * <p>&#10; * See {@link android.R.styleable#EditText EditText Attributes},&#10; * {@link android.R.styleable#TextView TextView Attributes},&#10; * {@link android.R.styleable#View View Attributes}&#10; *&#10; * @attr ref android.R.styleable#EditText_enableTextStylingShortcuts&#10; "
  ]
  node [
    id 1
    label "public void setSelection(int start, int stop)"
    type "method"
    comment "&#10;     * Convenience for {@link Selection#setSelection(Spannable, int, int)}.&#10;     "
  ]
  node [
    id 2
    label "setSelection(Spannable"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 3
    label "android.text.Selection"
    type "class"
    comment "&#10; * Utility class for manipulating cursors and selections in CharSequences.&#10; * A cursor is a selection where the start and end are at the same offset.&#10; "
  ]
  node [
    id 4
    label "public static final int getSelectionStart(CharSequence text)"
    type "method"
    comment "&#10;     * Return the offset of the selection anchor or cursor, or -1 if&#10;     * there is no selection or cursor.&#10;     "
  ]
  node [
    id 5
    label "public static final int getSelectionEnd(CharSequence text)"
    type "method"
    comment "&#10;     * Return the offset of the selection edge or cursor, or -1 if&#10;     * there is no selection or cursor.&#10;     "
  ]
  node [
    id 6
    label "public static void setSelection(Spannable text, int start, int stop)"
    type "method"
    comment "&#10;     * Set the selection anchor to <code>start</code> and the selection edge&#10;     * to <code>stop</code>.&#10;     "
  ]
  node [
    id 7
    label "private static void setSelection(Spannable text, int start, int stop, int memory)"
    type "method"
    comment "&#10;     * Set the selection anchor to <code>start</code>, the selection edge&#10;     * to <code>stop</code> and the memory horizontal to <code>memory</code>.&#10;     "
  ]
  node [
    id 8
    label "private static void updateMemory(Spannable text, int memory)"
    type "method"
    comment "&#10;     * Update the memory position for text. This is used to ensure vertical navigation of lines&#10;     * with different lengths behaves as expected and remembers the longest horizontal position&#10;     * seen during a vertical traversal.&#10;     "
  ]
  node [
    id 9
    label "public static final void setSelection(Spannable text, int index)"
    type "method"
    comment "&#10;     * Move the cursor to offset <code>index</code>.&#10;     "
  ]
  node [
    id 10
    label "public static final void selectAll(Spannable text)"
    type "method"
    comment "&#10;     * Select the entire text.&#10;     "
  ]
  node [
    id 11
    label "public static final void extendSelection(Spannable text, int index)"
    type "method"
    comment "&#10;     * Move the selection edge to offset <code>index</code>.&#10;     "
  ]
  node [
    id 12
    label "private static void extendSelection(Spannable text, int index, int memory)"
    type "method"
    comment "&#10;     * Move the selection edge to offset <code>index</code> and update the memory horizontal.&#10;     "
  ]
  node [
    id 13
    label "public static final void removeSelection(Spannable text)"
    type "method"
    comment "&#10;     * Remove the selection or cursor, if any, from the text.&#10;     "
  ]
  node [
    id 14
    label "public static boolean moveUp(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the cursor to the buffer offset physically above the current&#10;     * offset, to the beginning if it is on the top line but not at the&#10;     * start, or return false if the cursor is already on the top line.&#10;     "
  ]
  node [
    id 15
    label "private static void setSelectionAndMemory(Spannable text, Layout layout, int line, int end, int direction, boolean extend)"
    type "method"
    comment "&#10;     * Calculate the movement and memory positions needed, and set or extend the selection.&#10;     "
  ]
  node [
    id 16
    label "public static boolean moveDown(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the cursor to the buffer offset physically below the current&#10;     * offset, to the end of the buffer if it is on the bottom line but&#10;     * not at the end, or return false if the cursor is already at the&#10;     * end of the buffer.&#10;     "
  ]
  node [
    id 17
    label "public static boolean moveLeft(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the cursor to the buffer offset physically to the left of&#10;     * the current offset, or return false if the cursor is already&#10;     * at the left edge of the line and there is not another line to move it to.&#10;     "
  ]
  node [
    id 18
    label "public static boolean moveRight(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the cursor to the buffer offset physically to the right of&#10;     * the current offset, or return false if the cursor is already at&#10;     * at the right edge of the line and there is not another line&#10;     * to move it to.&#10;     "
  ]
  node [
    id 19
    label "public static boolean moveToParagraphStart(@NonNull Spannable text, @NonNull Layout layout)"
    type "method"
    comment "&#10;     * Move the cusrot to the closest paragraph start offset.&#10;     *&#10;     * @param text the spannable text&#10;     * @param layout layout to be used for drawing.&#10;     * @return true if the cursor is moved, otherwise false.&#10;     "
  ]
  node [
    id 20
    label "public static boolean moveToParagraphEnd(@NonNull Spannable text, @NonNull Layout layout)"
    type "method"
    comment "&#10;     * Move the cursor to the closest paragraph end offset.&#10;     *&#10;     * @param text the spannable text&#10;     * @param layout layout to be used for drawing.&#10;     * @return true if the cursor is moved, otherwise false.&#10;     "
  ]
  node [
    id 21
    label "public static boolean extendToParagraphStart(@NonNull Spannable text)"
    type "method"
    comment "&#10;     * Extend the selection to the closest paragraph start offset.&#10;     *&#10;     * @param text the spannable text&#10;     * @return true if the selection is extended, otherwise false&#10;     "
  ]
  node [
    id 22
    label "public static boolean extendToParagraphEnd(@NonNull Spannable text)"
    type "method"
    comment "&#10;     * Extend the selection to the closest paragraph end offset.&#10;     *&#10;     * @param text the spannable text&#10;     * @return true if the selection is extended, otherwise false&#10;     "
  ]
  node [
    id 23
    label "public static boolean extendUp(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the selection end to the buffer offset physically above&#10;     * the current selection end.&#10;     "
  ]
  node [
    id 24
    label "public static boolean extendDown(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the selection end to the buffer offset physically below&#10;     * the current selection end.&#10;     "
  ]
  node [
    id 25
    label "public static boolean extendLeft(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the selection end to the buffer offset physically to the left of&#10;     * the current selection end.&#10;     "
  ]
  node [
    id 26
    label "public static boolean extendRight(Spannable text, Layout layout)"
    type "method"
    comment "&#10;     * Move the selection end to the buffer offset physically to the right of&#10;     * the current selection end.&#10;     "
  ]
  node [
    id 27
    label "public void setSelection(int index)"
    type "method"
    comment "&#10;     * Convenience for {@link Selection#setSelection(Spannable, int)}.&#10;     "
  ]
  node [
    id 28
    label "public void selectAll()"
    type "method"
    comment "&#10;     * Convenience for {@link Selection#selectAll}.&#10;     "
  ]
  node [
    id 29
    label "public void extendSelection(int index)"
    type "method"
    comment "&#10;     * Convenience for {@link Selection#extendSelection}.&#10;     "
  ]
  node [
    id 30
    label "public void setEllipsize(TextUtils.TruncateAt ellipsis)"
    type "method"
    comment "&#10;     * Causes words in the text that are longer than the view's width to be ellipsized instead of&#10;     * broken in the middle. {@link TextUtils.TruncateAt#MARQUEE&#10;     * TextUtils.TruncateAt#MARQUEE} is not supported.&#10;     *&#10;     * @param ellipsis Type of ellipsis to be applied.&#10;     * @throws IllegalArgumentException When the value of <code>ellipsis</code> parameter is&#10;     *      {@link TextUtils.TruncateAt#MARQUEE}.&#10;     * @see TextView#setEllipsize(TextUtils.TruncateAt)&#10;     "
  ]
  node [
    id 31
    label "MARQUEE"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 32
    label "MARQUEETextUtils.TruncateAt"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 33
    label "public void setStyleShortcutsEnabled(boolean enabled)"
    type "method"
    comment "&#10;     * Enables styls shortcuts, e.g. Ctrl+B for making text bold.&#10;     *&#10;     * @param enabled true for enabled, false for disabled.&#10;     "
  ]
  node [
    id 34
    label "public boolean isStyleShortcutEnabled()"
    type "method"
    comment "&#10;     * Return true if style shortcut is enabled, otherwise returns false.&#10;     * @return true if style shortcut is enabled, otherwise returns false.&#10;     "
  ]
  edge [
    source 0
    target 1
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
    target 33
    type "child"
  ]
  edge [
    source 0
    target 34
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
    type "child"
  ]
  edge [
    source 3
    target 5
    type "child"
  ]
  edge [
    source 3
    target 6
    type "child"
  ]
  edge [
    source 3
    target 7
    type "child"
  ]
  edge [
    source 3
    target 8
    type "child"
  ]
  edge [
    source 3
    target 9
    type "child"
  ]
  edge [
    source 3
    target 10
    type "child"
  ]
  edge [
    source 3
    target 11
    type "child"
  ]
  edge [
    source 3
    target 12
    type "child"
  ]
  edge [
    source 3
    target 13
    type "child"
  ]
  edge [
    source 3
    target 14
    type "child"
  ]
  edge [
    source 3
    target 15
    type "child"
  ]
  edge [
    source 3
    target 16
    type "child"
  ]
  edge [
    source 3
    target 17
    type "child"
  ]
  edge [
    source 3
    target 18
    type "child"
  ]
  edge [
    source 3
    target 19
    type "child"
  ]
  edge [
    source 3
    target 20
    type "child"
  ]
  edge [
    source 3
    target 21
    type "child"
  ]
  edge [
    source 3
    target 22
    type "child"
  ]
  edge [
    source 3
    target 23
    type "child"
  ]
  edge [
    source 3
    target 24
    type "child"
  ]
  edge [
    source 3
    target 25
    type "child"
  ]
  edge [
    source 3
    target 26
    type "child"
  ]
  edge [
    source 27
    target 2
    type "link"
  ]
  edge [
    source 28
    target 3
    type "link"
  ]
  edge [
    source 29
    target 3
    type "link"
  ]
  edge [
    source 30
    target 31
    type "link"
  ]
  edge [
    source 30
    target 32
    type "link"
  ]
]
