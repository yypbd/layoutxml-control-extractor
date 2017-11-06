# LayoutXML Control Extractor


A tool for extracting control IDs and writing findByViewId code tools.

It creates a Kotlin, Kotlin(BindExt), Java code by Android Layout XML.

## Compile

Use Delphi XE5. :)

## Usage

1. Copy the Android Layout XML to the left size
2. Select output options
3. Click the Extract button.
4. Copy & Paste created code :)


## Example

https://github.com/googlesamples/android-ConstraintLayoutExamples/blob/master/app/src/main/res/layout/constraint_example_5.xml

### Java output

```
private TextView mTextView3;
private TextView mTextView4;
private TextView mTextView5;
private ImageView mImageView;
private ImageButton mImageButton;

mTextView3 = (TextView) findViewById(R.id.textView3);
mTextView4 = (TextView) findViewById(R.id.textView4);
mTextView5 = (TextView) findViewById(R.id.textView5);
mImageView = (ImageView) findViewById(R.id.imageView);
mImageButton = (ImageButton) findViewById(R.id.imageButton);
```

### Kotlin output

```
private val mTextView3 = findViewById(R.id.textView3) as TextView
private val mTextView4 = findViewById(R.id.textView4) as TextView
private val mTextView5 = findViewById(R.id.textView5) as TextView
private val mImageView = findViewById(R.id.imageView) as ImageView
private val mImageButton = findViewById(R.id.imageButton) as ImageButton
```

### Kotlin(BindExt) output

```
private val mTextView3: TextView by bind(R.id.textView3)
private val mTextView4: TextView by bind(R.id.textView4)
private val mTextView5: TextView by bind(R.id.textView5)
private val mImageView: ImageView by bind(R.id.imageView)
private val mImageButton: ImageButton by bind(R.id.imageButton)
```


## History

### v1.0


## License

MIT License
