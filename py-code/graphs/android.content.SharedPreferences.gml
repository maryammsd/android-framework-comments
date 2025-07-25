graph [
  directed 1
  node [
    id 0
    label "android.content.SharedPreferences"
    type "class"
    comment "&#10; * Interface for accessing and modifying preference data returned by {@link&#10; * Context#getSharedPreferences}.  For any particular set of preferences,&#10; * there is a single instance of this class that all clients share.&#10; * Modifications to the preferences must go through an {@link Editor} object&#10; * to ensure the preference values remain in a consistent state and control&#10; * when they are committed to storage.  Objects that are returned from the&#10; * various <code>get</code> methods must be treated as immutable by the application.&#10; *&#10; * <p>SharedPreferences is best suited to storing data about how the user prefers&#10; * to experience the app, for example, whether the user prefers a particular UI theme&#10; * or whether they prefer viewing particular content in a list vs. a grid. To this end,&#10; * SharedPreferences reflects changes {@link Editor#commit() committed} or&#10; * {@link Editor#apply() applied} by {@link Editor}s <em>immediately</em>, potentially&#10; * before those changes are durably persisted.&#10; * Under some circumstances such as app crashes or termination these changes may be lost,&#10; * even if an {@link OnSharedPreferenceChangeListener} reported the change was successful.&#10; * SharedPreferences is not recommended for storing data that is sensitive to this&#10; * kind of rollback to a prior state such as user security or privacy settings.&#10; * For other high-level data persistence options, see&#10; * <a href=&#34;https://d.android.com/room&#34;>Room</a> or&#10; * <a href=&#34;https://d.android.com/datastore&#34;>DataStore</a>.&#10; *&#10; * <p><em>Note:</em> Common implementations guarantee that outstanding edits to preference&#10; * files are persisted to disk when host Activities become stopped. In some situations&#10; * (e.g. performing many {@link Editor#commit()} or {@link Editor#apply()}&#10; * operations just prior to navigating away from the host Activity) this can lead&#10; * to blocking the main thread during lifecycle transition events and associated&#10; * ANR errors. For more details see the documentation for {@link Editor#commit()} and&#10; * {@link Editor#apply()}.&#10; *&#10; * <p><em>Note: This class does not support use across multiple processes.</em>&#10; *&#10; * <div class=&#34;special reference&#34;>&#10; * <h3>Developer Guides</h3>&#10; * <p>For more information about using SharedPreferences, read the&#10; * <a href=&#34;{@docRoot}guide/topics/data/data-storage.html#pref&#34;>Data Storage</a>&#10; * developer guide.</p></div>&#10; *&#10; * @see Context#getSharedPreferences&#10; "
  ]
  node [
    id 1
    label " Map<String, ?> getAll()"
    type "method"
    comment "&#10;     * Retrieve all values from the preferences.&#10;     *&#10;     * <p>Note that you <em>must not</em> modify the collection returned&#10;     * by this method, or alter any of its contents.  The consistency of your&#10;     * stored data is not guaranteed if you do.&#10;     *&#10;     * @return Returns a map containing a list of pairs key/value representing&#10;     * the preferences.&#10;     *&#10;     * @throws NullPointerException&#10;     "
  ]
  node [
    id 2
    label " String getString(String key, @Nullable String defValue)"
    type "method"
    comment "&#10;     * Retrieve a String value from the preferences.&#10;     * &#10;     * @param key The name of the preference to retrieve.&#10;     * @param defValue Value to return if this preference does not exist.&#10;     * &#10;     * @return Returns the preference value if it exists, or defValue.  Throws&#10;     * ClassCastException if there is a preference with this name that is not&#10;     * a String.&#10;     * &#10;     * @throws ClassCastException&#10;     "
  ]
  node [
    id 3
    label " Set<String> getStringSet(String key, @Nullable Set<String> defValues)"
    type "method"
    comment "&#10;     * Retrieve a set of String values from the preferences.&#10;     * &#10;     * <p>Note that you <em>must not</em> modify the set instance returned&#10;     * by this call.  The consistency of the stored data is not guaranteed&#10;     * if you do, nor is your ability to modify the instance at all.&#10;     *&#10;     * @param key The name of the preference to retrieve.&#10;     * @param defValues Values to return if this preference does not exist.&#10;     * &#10;     * @return Returns the preference values if they exist, or defValues.&#10;     * Throws ClassCastException if there is a preference with this name&#10;     * that is not a Set.&#10;     * &#10;     * @throws ClassCastException&#10;     "
  ]
  node [
    id 4
    label " int getInt(String key, int defValue)"
    type "method"
    comment "&#10;     * Retrieve an int value from the preferences.&#10;     * &#10;     * @param key The name of the preference to retrieve.&#10;     * @param defValue Value to return if this preference does not exist.&#10;     * &#10;     * @return Returns the preference value if it exists, or defValue.  Throws&#10;     * ClassCastException if there is a preference with this name that is not&#10;     * an int.&#10;     * &#10;     * @throws ClassCastException&#10;     "
  ]
  node [
    id 5
    label " long getLong(String key, long defValue)"
    type "method"
    comment "&#10;     * Retrieve a long value from the preferences.&#10;     * &#10;     * @param key The name of the preference to retrieve.&#10;     * @param defValue Value to return if this preference does not exist.&#10;     * &#10;     * @return Returns the preference value if it exists, or defValue.  Throws&#10;     * ClassCastException if there is a preference with this name that is not&#10;     * a long.&#10;     * &#10;     * @throws ClassCastException&#10;     "
  ]
  node [
    id 6
    label " float getFloat(String key, float defValue)"
    type "method"
    comment "&#10;     * Retrieve a float value from the preferences.&#10;     * &#10;     * @param key The name of the preference to retrieve.&#10;     * @param defValue Value to return if this preference does not exist.&#10;     * &#10;     * @return Returns the preference value if it exists, or defValue.  Throws&#10;     * ClassCastException if there is a preference with this name that is not&#10;     * a float.&#10;     * &#10;     * @throws ClassCastException&#10;     "
  ]
  node [
    id 7
    label " boolean getBoolean(String key, boolean defValue)"
    type "method"
    comment "&#10;     * Retrieve a boolean value from the preferences.&#10;     * &#10;     * @param key The name of the preference to retrieve.&#10;     * @param defValue Value to return if this preference does not exist.&#10;     * &#10;     * @return Returns the preference value if it exists, or defValue.  Throws&#10;     * ClassCastException if there is a preference with this name that is not&#10;     * a boolean.&#10;     * &#10;     * @throws ClassCastException&#10;     "
  ]
  node [
    id 8
    label " boolean contains(String key)"
    type "method"
    comment "&#10;     * Checks whether the preferences contains a preference.&#10;     * &#10;     * @param key The name of the preference to check.&#10;     * @return Returns true if the preference exists in the preferences,&#10;     *         otherwise false.&#10;     "
  ]
  node [
    id 9
    label " Editor edit()"
    type "method"
    comment "&#10;     * Create a new Editor for these preferences, through which you can make&#10;     * modifications to the data in the preferences and atomically commit those&#10;     * changes back to the SharedPreferences object.&#10;     * &#10;     * <p>Note that you <em>must</em> call {@link Editor#commit} to have any&#10;     * changes you perform in the Editor actually show up in the&#10;     * SharedPreferences.&#10;     * &#10;     * @return Returns a new instance of the {@link Editor} interface, allowing&#10;     * you to modify the values in this SharedPreferences object.&#10;     "
  ]
  node [
    id 10
    label "commit"
    type "link-shadow"
    comment "No comment available"
  ]
  node [
    id 11
    label "Editor"
  ]
  node [
    id 12
    label " void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener)"
    type "method"
    comment "&#10;     * Registers a callback to be invoked when a change happens to a preference.&#10;     *&#10;     * <p class=&#34;caution&#34;><strong>Caution:</strong> The preference manager does&#10;     * not currently store a strong reference to the listener. You must store a&#10;     * strong reference to the listener, or it will be susceptible to garbage&#10;     * collection. We recommend you keep a reference to the listener in the&#10;     * instance data of an object that will exist as long as you need the&#10;     * listener.</p>&#10;     *&#10;     * @param listener The callback that will run.&#10;     * @see #unregisterOnSharedPreferenceChangeListener&#10;     "
  ]
  node [
    id 13
    label " void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener)"
    type "method"
    comment "&#10;     * Unregisters a previous callback.&#10;     *&#10;     * @param listener The callback that should be unregistered.&#10;     * @see #registerOnSharedPreferenceChangeListener&#10;     "
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
    target 12
    type "child"
  ]
  edge [
    source 0
    target 13
    type "child"
  ]
  edge [
    source 9
    target 10
    type "link"
  ]
  edge [
    source 9
    target 11
    type "link"
  ]
]
