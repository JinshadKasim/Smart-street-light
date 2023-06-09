package com.example.webview;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import android.Manifest;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.provider.MediaStore;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

public class MainAcitivity extends Activity {
	 private final static int FCR = 1;
	    WebView webView;
	    private String mCM;
	    private ValueCallback<Uri> mUM;
	    private ValueCallback<Uri[]> mUMA;
	    private ValueCallback<Uri> mUploadMessage;
	    private Uri mCapturedImageURI = null;
	    private ValueCallback<Uri[]> mFilePathCallback;
	    private String mCameraPhotoPath;
	    private static final int INPUT_FILE_REQUEST_CODE = 1;
	    private static final int FILECHOOSER_RESULTCODE = 1;
	    private static final String TAG = MainAcitivity.class.getSimpleName();
	    
	    
	    @Override
	    public void onActivityResult(int requestCode, int resultCode, Intent data) {
	        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.ICE_CREAM_SANDWICH) {
	            if (requestCode != INPUT_FILE_REQUEST_CODE || mFilePathCallback == null) {
	                super.onActivityResult(requestCode, resultCode, data);
	                return;
	            }
	            Uri[] results = null;
	            // Check that the response is a good one
	            if (resultCode == Activity.RESULT_OK) {
	                if (data == null) {
	                    // If there is not data, then we may have taken a photo
	                    if (mCameraPhotoPath != null) {
	                        results = new Uri[]{Uri.parse(mCameraPhotoPath)};
	                    }
	                } else {
	                    String dataString = data.getDataString();
	                    if (dataString != null) {
	                        results = new Uri[]{Uri.parse(dataString)};
	                    }
	                }
	            }
	            mFilePathCallback.onReceiveValue(results);
	            mFilePathCallback = null;
	        } else if (Build.VERSION.SDK_INT <= Build.VERSION_CODES.JELLY_BEAN) {
	            if (requestCode != FILECHOOSER_RESULTCODE || mUploadMessage == null) {
	                super.onActivityResult(requestCode, resultCode, data);
	                return;
	            }
	            if (requestCode == FILECHOOSER_RESULTCODE) {
	                if (null == this.mUploadMessage) {
	                    return;
	                }
	                Uri result = null;
	                try {
	                    if (resultCode != RESULT_OK) {
	                        result = null;
	                    } else {
	                        // retrieve from the private variable if the intent is null
	                        result = data == null ? mCapturedImageURI : data.getData();
	                    }
	                } catch (Exception e) {
	                    Toast.makeText(getApplicationContext(), "activity :" + e,
	                            Toast.LENGTH_LONG).show();
	                }
	                mUploadMessage.onReceiveValue(result);
	                mUploadMessage = null;
	            }
	        }
	        return;
	    }
//	    @SuppressLint({"SetJavaScriptEnabled", "WrongViewCast"})
	    
	    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_acitivity);
        

        webView =(WebView) findViewById(R.id.webview_sample);
//        if (Build.VERSION.SDK_INT >= 23 && (ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED || ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED)) {
//            ActivityCompat.requestPermissions(MainAcitivity.this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.CAMERA}, 1);
//        }
        assert webView != null;

        WebSettings webSettings = webView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setAllowFileAccess(true);
        webView.getSettings().setSupportZoom(true);
        webView.getSettings().setBuiltInZoomControls(true);

//        if (Build.VERSION.SDK_INT >= 21) {
//            webSettings.setMixedContentMode(0);
//            webView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
//        } else if (Build.VERSION.SDK_INT >= 19) {
//            webView.setLayerType(View.LAYER_TYPE_HARDWARE, null);
//        } else if (Build.VERSION.SDK_INT < 19) {
//            webView.setLayerType(View.LAYER_TYPE_SOFTWARE, null);
//        }
        webView.setWebViewClient(new Callback());
        //webView.loadUrl("https://infeeds.com/");
        
        
        
        
        //add url here
        
        
        
//        webView.loadUrl("http://192.168.43.89:8000/user_reg/u_landing/");
        
        webView.loadUrl("http://192.168.239.156:8000/login/android/");
        
        //url here up
        
        
        
        

//        webView.loadUrl("http://192.168.43.89:8000/login/view/");



//download


        webView.setDownloadListener(new DownloadListener() {
            public void onDownloadStart(String url, String userAgent,
                                        String contentDisposition, String mimetype,
                                        long contentLength) {
                Intent i = new Intent(Intent.ACTION_VIEW);
                i.setData(Uri.parse(url));
                startActivity(i);
            }
        });

//end



//
//        webView.setWebChromeClient(new WebChromeClient() {
//
//
//            private File createImageFile() throws IOException {
//
//                String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
//                String imageFileName = "JPEG_" + timeStamp + "_";
//                File storageDir = Environment.getExternalStoragePublicDirectory(
//                        Environment.DIRECTORY_PICTURES);
//                File imageFile = File.createTempFile(
//                        imageFileName,  /* prefix */
//                        ".jpg",       /* suffix */
//                        storageDir      /* directory */
//                );
//                return imageFile;
//
//            }
//            public boolean onShowFileChooser(WebView view, ValueCallback<Uri[]> filePath, WebChromeClient.FileChooserParams fileChooserParams) {
//                // Double check that we don't have any existing callbacks
//                if (mFilePathCallback != null) {
//                    mFilePathCallback.onReceiveValue(null);
//                }
//                mFilePathCallback = filePath;
//                Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
//                if (takePictureIntent.resolveActivity(getPackageManager()) != null) {
//                    // Create the File where the photo should go
//                    File photoFile = null;
//                    try {
//                        photoFile = createImageFile();
//                        takePictureIntent.putExtra("PhotoPath", mCameraPhotoPath);
//                    } catch (IOException ex) {
//                        // Error occurred while creating the File
//                        Log.e(TAG, "Unable to create Image File", ex);
//                    }
//                    // Continue only if the File was successfully created
//                    if (photoFile != null) {
//                        mCameraPhotoPath = "file:" + photoFile.getAbsolutePath();
//                        takePictureIntent.putExtra(MediaStore.EXTRA_OUTPUT,
//                                Uri.fromFile(photoFile));
//                    } else {
//                        takePictureIntent = null;
//                    }
//                }
//                Intent contentSelectionIntent = new Intent(Intent.ACTION_GET_CONTENT);
//                contentSelectionIntent.addCategory(Intent.CATEGORY_OPENABLE);
//                contentSelectionIntent.setType("image/*");
//                Intent[] intentArray;
//                if (takePictureIntent != null) {
//                    intentArray = new Intent[]{takePictureIntent};
//                } else {
//                    intentArray = new Intent[0];
//                }
//                Intent chooserIntent = new Intent(Intent.ACTION_CHOOSER);
//                chooserIntent.putExtra(Intent.EXTRA_INTENT, contentSelectionIntent);
//                chooserIntent.putExtra(Intent.EXTRA_TITLE, "Image Chooser");
//                chooserIntent.putExtra(Intent.EXTRA_INITIAL_INTENTS, intentArray);
//                startActivityForResult(chooserIntent, INPUT_FILE_REQUEST_CODE);
//                return true;
//            }
//            public void openFileChooser(ValueCallback<Uri> uploadMsg, String acceptType) {
//                mUploadMessage = uploadMsg;
//                // Create AndroidExampleFolder at sdcard
//                // Create AndroidExampleFolder at sdcard
//                File imageStorageDir = new File(
//                        Environment.getExternalStoragePublicDirectory(
//                                Environment.DIRECTORY_PICTURES)
//                        , "AndroidExampleFolder");
//                if (!imageStorageDir.exists()) {
//                    // Create AndroidExampleFolder at sdcard
//                    imageStorageDir.mkdirs();
//                }
//                // Create camera captured image file path and name
//                File file = new File(
//                        imageStorageDir + File.separator + "IMG_"
//                                + String.valueOf(System.currentTimeMillis())
//                                + ".jpg");
//                mCapturedImageURI = Uri.fromFile(file);
//                // Camera capture image intent
//                final Intent captureIntent = new Intent(
//                        android.provider.MediaStore.ACTION_IMAGE_CAPTURE);
//                captureIntent.putExtra(MediaStore.EXTRA_OUTPUT, mCapturedImageURI);
//                Intent i = new Intent(Intent.ACTION_GET_CONTENT);
//                i.addCategory(Intent.CATEGORY_OPENABLE);
//                i.setType("image/*");
//                // Create file chooser intent
//                Intent chooserIntent = Intent.createChooser(i, "Image Chooser");
//                // Set camera intent to file chooser
//                chooserIntent.putExtra(Intent.EXTRA_INITIAL_INTENTS
//                        , new Parcelable[] { captureIntent });
//                // On select image call onActivityResult method of activity
//                startActivityForResult(chooserIntent, FILECHOOSER_RESULTCODE);
//            }
//            public void openFileChooser(ValueCallback<Uri> uploadMsg,
//                                        String acceptType,
//                                        String capture) {
//                openFileChooser(uploadMsg, acceptType);
//            }
//
//        });
        
    }


//    @Override
//    public boolean onCreateOptionsMenu(Menu menu) {
//        // Inflate the menu; this adds items to the action bar if it is present.
//        getMenuInflater().inflate(R.menu.main_acitivity, menu);
//        return true;
//    }
    
    
    public class Callback extends WebViewClient {
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            Toast.makeText(getApplicationContext(), "Failed loading app!", Toast.LENGTH_SHORT).show();
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater myMenuInflater = getMenuInflater();
        myMenuInflater.inflate(R.menu.main_acitivity, menu);
        return super.onCreateOptionsMenu(menu);
    }
//    @Override
//    public boolean onOptionsItemSelected(MenuItem item) {
//        switch (item.getItemId()) {
//
//            case R.id.myMenuOne:
//                onBackPressed();
//                break;
//
//            case R.id.myMenuTwo:
//                GoForward();
//                break;
//
//        }
//        return true;
//    }
//    private void GoForward() {
//        if (webView.canGoForward()) {
//            webView.goForward();
//        } else {
//            Toast.makeText(this, "Can't go further!", Toast.LENGTH_SHORT).show();
//        }
//    }
    @Override
    public void onBackPressed() {
        if (webView.canGoBack()) {
            webView.goBack();
        }

        else{
            super.onBackPressed();
        }
    }




    
    
    
}
