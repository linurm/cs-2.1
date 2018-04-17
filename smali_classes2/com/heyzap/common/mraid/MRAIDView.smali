.class public Lcom/heyzap/common/mraid/MRAIDView;
.super Landroid/widget/RelativeLayout;
.source "MRAIDView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;,
        Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;,
        Lcom/heyzap/common/mraid/MRAIDView$Size;
    }
.end annotation


# static fields
.field private static final CLOSE_REGION_SIZE:I = 0x32

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_EXPANDED:I = 0x2

.field public static final STATE_HIDDEN:I = 0x4

.field public static final STATE_LOADING:I = 0x0

.field public static final STATE_RESIZED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MRAIDView"

.field public static final VERSION:Ljava/lang/String; = "1.1.1"


# instance fields
.field private bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

.field private baseUrl:Ljava/lang/String;

.field private closeRegion:Landroid/widget/ImageButton;

.field private contentViewTop:I

.field private context:Landroid/content/Context;

.field private currentPosition:Landroid/graphics/Rect;

.field private currentWebView:Landroid/webkit/WebView;

.field private data:Ljava/lang/String;

.field private defaultPosition:Landroid/graphics/Rect;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private expandedView:Landroid/widget/RelativeLayout;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private isActionBarShowing:Z

.field private isClosing:Z

.field private isExpandingFromDefault:Z

.field private isExpandingPart2:Z

.field private isForceNotFullScreen:Z

.field private isForcingFullScreen:Z

.field private isFullScreen:Z

.field private final isInterstitial:Z

.field private isLaidOut:Z

.field private isPageFinished:Z

.field private isViewable:Z

.field private listener:Lcom/heyzap/common/mraid/MRAIDViewListener;

.field private maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

.field private mraidJs:Ljava/lang/String;

.field private mraidWebChromeClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;

.field private mraidWebViewClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

.field private nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

.field private nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

.field private nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

.field private orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

.field private origTitleBarVisibility:I

.field private final originalRequestedOrientation:I

.field private resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

.field private resizedView:Landroid/widget/RelativeLayout;

.field private screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

.field private state:I

.field private titleBar:Landroid/view/View;

.field private useCustomClose:Z

.field private webView:Landroid/webkit/WebView;

.field private webViewPart2:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/heyzap/common/mraid/MRAIDViewListener;Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;ZLcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 165
    iput-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 178
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/heyzap/common/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    .line 180
    iput-boolean p7, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    .line 182
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p8}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getGenericBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    .line 186
    :cond_0
    iput v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 187
    iput-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isViewable:Z

    .line 188
    iput-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->useCustomClose:Z

    .line 189
    new-instance v0, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    invoke-direct {v0}, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    .line 190
    new-instance v0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    invoke-direct {v0}, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    .line 191
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p1, v1}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    .line 192
    new-instance v0, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-direct {v0, p1, v1}, Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;-><init>(Landroid/content/Context;Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    .line 194
    iput-object p5, p0, Lcom/heyzap/common/mraid/MRAIDView;->listener:Lcom/heyzap/common/mraid/MRAIDViewListener;

    .line 195
    iput-object p6, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    .line 197
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object v0, p1

    .line 198
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 202
    new-instance v0, Lcom/heyzap/common/mraid/MRAIDView$Size;

    invoke-direct {v0, p0, v3}, Lcom/heyzap/common/mraid/MRAIDView$Size;-><init>(Lcom/heyzap/common/mraid/MRAIDView;Lcom/heyzap/common/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    .line 203
    new-instance v0, Lcom/heyzap/common/mraid/MRAIDView$Size;

    invoke-direct {v0, p0, v3}, Lcom/heyzap/common/mraid/MRAIDView$Size;-><init>(Lcom/heyzap/common/mraid/MRAIDView;Lcom/heyzap/common/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    .line 205
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 206
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->originalRequestedOrientation:I

    .line 210
    :goto_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "originalRequestedOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->originalRequestedOrientation:I

    invoke-static {v2}, Lcom/heyzap/common/mraid/MRAIDView;->getOrientationString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput-object p3, p0, Lcom/heyzap/common/mraid/MRAIDView;->data:Ljava/lang/String;

    .line 213
    return-void

    .line 208
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->originalRequestedOrientation:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/heyzap/common/mraid/MRAIDView;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    return v0
.end method

.method static synthetic access$1002(Lcom/heyzap/common/mraid/MRAIDView;I)I
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->closeFromExpanded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->closeFromResized()V

    return-void
.end method

.method static synthetic access$1300(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->removeResizeView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->injectMraidJs(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/heyzap/common/mraid/MRAIDView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/heyzap/common/mraid/MRAIDView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isExpandingPart2:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/heyzap/common/mraid/MRAIDView;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isExpandingPart2:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireStateChangeEvent()V

    return-void
.end method

.method static synthetic access$2400(Lcom/heyzap/common/mraid/MRAIDView;)Lcom/heyzap/common/mraid/MRAIDViewListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->listener:Lcom/heyzap/common/mraid/MRAIDViewListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->restoreOriginalOrientation()V

    return-void
.end method

.method static synthetic access$2600(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->restoreOriginalScreenState()V

    return-void
.end method

.method static synthetic access$2700(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->close()V

    return-void
.end method

.method static synthetic access$2802(Lcom/heyzap/common/mraid/MRAIDView;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;ZIIII)V
    .locals 0

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/heyzap/common/mraid/MRAIDView;->onLayoutWebView(Landroid/webkit/WebView;ZIIII)V

    return-void
.end method

.method static synthetic access$3000(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setSupportedServices()V

    return-void
.end method

.method static synthetic access$3100(Lcom/heyzap/common/mraid/MRAIDView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isLaidOut:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setScreenSize()V

    return-void
.end method

.method static synthetic access$3300(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setMaxSize()V

    return-void
.end method

.method static synthetic access$3400(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setCurrentPosition()V

    return-void
.end method

.method static synthetic access$3500(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setDefaultPosition()V

    return-void
.end method

.method static synthetic access$3600(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireReadyEvent()V

    return-void
.end method

.method static synthetic access$3700(Lcom/heyzap/common/mraid/MRAIDView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isViewable:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireViewableChangeEvent()V

    return-void
.end method

.method static synthetic access$3900(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/common/mraid/MRAIDView;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->parseCommandUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setResizedViewPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/common/mraid/MRAIDView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/common/mraid/MRAIDView;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->setViewable(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/heyzap/common/mraid/MRAIDView;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->pauseWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method private addCloseRegion(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1019
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    .line 1020
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1021
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$11;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$11;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1030
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->useCustomClose:Z

    if-nez v0, :cond_0

    .line 1031
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->showDefaultCloseButton()V

    .line 1034
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1035
    return-void
.end method

.method private applyOrientationProperties()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1594
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOrientationProperties "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v4, v4, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    invoke-virtual {v4}, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientationString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1599
    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1600
    if-ne v1, v2, :cond_1

    move v1, v2

    .line 1601
    :goto_0
    const-string v5, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentOrientation "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    const-string v4, "portrait"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->originalRequestedOrientation:I

    .line 1604
    iget-object v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    iget v4, v4, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-nez v4, :cond_3

    .line 1618
    :cond_0
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1619
    return-void

    :cond_1
    move v1, v3

    .line 1600
    goto :goto_0

    .line 1601
    :cond_2
    const-string v4, "landscape"

    goto :goto_1

    .line 1606
    :cond_3
    iget-object v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    iget v4, v4, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    if-ne v4, v2, :cond_4

    move v2, v3

    .line 1607
    goto :goto_2

    .line 1610
    :cond_4
    iget-object v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v4, v4, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    if-eqz v4, :cond_5

    .line 1611
    const/4 v2, -0x1

    goto :goto_2

    .line 1615
    :cond_5
    if-nez v1, :cond_0

    move v2, v3

    goto :goto_2
.end method

.method private calculateMaxSize()V
    .locals 6

    .prologue
    .line 1520
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1521
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1522
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1523
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMaxSize frame ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 1526
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->contentViewTop:I

    .line 1527
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v0, v2

    .line 1528
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateMaxSize statusHeight "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMaxSize titleHeight "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v0, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateMaxSize contentViewTop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1532
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v1, v1, Lcom/heyzap/common/mraid/MRAIDView$Size;->height:I

    iget v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v1, v2

    .line 1533
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateMaxSize max size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v2, v2, Lcom/heyzap/common/mraid/MRAIDView$Size;->width:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v2, v2, Lcom/heyzap/common/mraid/MRAIDView$Size;->height:I

    if-eq v1, v2, :cond_1

    .line 1535
    :cond_0
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iput v0, v2, Lcom/heyzap/common/mraid/MRAIDView$Size;->width:I

    .line 1536
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iput v1, v0, Lcom/heyzap/common/mraid/MRAIDView$Size;->height:I

    .line 1537
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_1

    .line 1538
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setMaxSize()V

    .line 1541
    :cond_1
    return-void
.end method

.method private calculatePosition(Z)V
    .locals 8

    .prologue
    .line 1545
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 1547
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    move-object v1, v0

    .line 1548
    :goto_0
    if-eqz p1, :cond_3

    const-string v0, "current"

    .line 1551
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1552
    const/4 v3, 0x0

    aget v3, v2, v3

    .line 1553
    const/4 v4, 0x1

    aget v2, v2, v4

    .line 1554
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculatePosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " locationOnScreen ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculatePosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " contentViewTop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/heyzap/common/mraid/MRAIDView;->contentViewTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->contentViewTop:I

    sub-int/2addr v2, v4

    .line 1557
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1558
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1560
    const-string v5, "MRAIDView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculatePosition "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " position ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "] ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 1564
    :goto_2
    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v5, :cond_0

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 1565
    :cond_0
    if-eqz p1, :cond_5

    .line 1566
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 1570
    :goto_3
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_1

    .line 1571
    if-eqz p1, :cond_6

    .line 1572
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setCurrentPosition()V

    .line 1578
    :cond_1
    :goto_4
    return-void

    :cond_2
    move-object v1, p0

    .line 1547
    goto/16 :goto_0

    .line 1548
    :cond_3
    const-string v0, "default"

    goto/16 :goto_1

    .line 1562
    :cond_4
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_2

    .line 1568
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr v4, v3

    add-int/2addr v1, v2

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    goto :goto_3

    .line 1574
    :cond_6
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setDefaultPosition()V

    goto :goto_4
.end method

.method private calculateScreenSize()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1503
    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1504
    if-ne v1, v0, :cond_2

    .line 1505
    :goto_0
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateScreenSize orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_3

    const-string v0, "portrait"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1507
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1508
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateScreenSize screen size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v2, v2, Lcom/heyzap/common/mraid/MRAIDView$Size;->width:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v2, v2, Lcom/heyzap/common/mraid/MRAIDView$Size;->height:I

    if-eq v1, v2, :cond_1

    .line 1510
    :cond_0
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iput v0, v2, Lcom/heyzap/common/mraid/MRAIDView$Size;->width:I

    .line 1511
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iput v1, v0, Lcom/heyzap/common/mraid/MRAIDView$Size;->height:I

    .line 1512
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_1

    .line 1513
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setScreenSize()V

    .line 1516
    :cond_1
    return-void

    .line 1504
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1505
    :cond_3
    const-string v0, "landscape"

    goto :goto_1
.end method

.method private close()V
    .locals 2

    .prologue
    .line 468
    const-string v0, "MRAIDView-JS callback"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$4;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$4;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.method private closeFromExpanded()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 860
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_1

    .line 861
    const/4 v0, 0x4

    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 862
    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->clearView()V

    .line 863
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$7;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$7;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->isClosing:Z

    .line 877
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 879
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 880
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 881
    iput-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    .line 882
    iput-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    .line 884
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$8;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$8;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 891
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    if-nez v0, :cond_3

    .line 893
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    :goto_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$9;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$9;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void

    .line 872
    :cond_1
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 873
    :cond_2
    iput v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    goto :goto_0

    .line 896
    :cond_3
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 897
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 898
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 899
    iput-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;

    .line 900
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidWebChromeClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 901
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidWebViewClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 902
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    .line 903
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private closeFromResized()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 918
    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 919
    iput-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isClosing:Z

    .line 920
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->removeResizeView()V

    .line 921
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 922
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$10;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$10;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 931
    return-void
.end method

.method private createCalendarEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 494
    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCalendarEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    invoke-interface {v0, v1, p1}, Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCreateCalendarEvent(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method

.method private createWebView()Landroid/webkit/WebView;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 291
    new-instance v0, Lcom/heyzap/common/mraid/MRAIDView$2;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/heyzap/common/mraid/MRAIDView$2;-><init>(Lcom/heyzap/common/mraid/MRAIDView;Landroid/content/Context;)V

    .line 335
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 336
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 337
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 338
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 339
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 340
    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$3;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$3;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 356
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 357
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidWebChromeClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 358
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidWebViewClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 360
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 368
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_1

    .line 370
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 374
    :cond_1
    return-object v0
.end method

.method private expand(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 503
    const-string v1, "MRAIDView-JS callback"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-eq v0, v4, :cond_3

    .line 576
    :cond_1
    :goto_1
    return-void

    .line 503
    :cond_2
    const-string v0, "(1-part)"

    goto :goto_0

    .line 515
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 516
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-ne v0, v3, :cond_7

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 518
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 525
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->expandHelper(Landroid/webkit/WebView;)V

    goto :goto_1

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 522
    :cond_7
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-ne v0, v4, :cond_5

    .line 523
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->removeResizeView()V

    goto :goto_2

    .line 534
    :cond_8
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/heyzap/common/mraid/MRAIDView$5;

    invoke-direct {v2, p0, v0}, Lcom/heyzap/common/mraid/MRAIDView$5;-><init>(Lcom/heyzap/common/mraid/MRAIDView;Ljava/lang/String;)V

    const-string v0, "2-part-content"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 535
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private expandHelper(Landroid/webkit/WebView;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 793
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_0

    .line 794
    const/4 v0, 0x2

    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->applyOrientationProperties()V

    .line 799
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->forceFullScreen()V

    .line 800
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    .line 803
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    .line 805
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    .line 806
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    iput-boolean v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->isExpandingFromDefault:Z

    .line 809
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_1

    .line 810
    iput-boolean v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->isLaidOut:Z

    .line 811
    iput v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 812
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 814
    :cond_1
    return-void
.end method

.method private fireReadyEvent()V
    .locals 2

    .prologue
    .line 1168
    const-string v0, "MRAIDView"

    const-string v1, "fireReadyEvent"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string v0, "mraid.fireReadyEvent();"

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method private fireStateChangeEvent()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 1177
    const-string v0, "MRAIDView"

    const-string v1, "fireStateChangeEvent"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "loading"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "expanded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "resized"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hidden"

    aput-object v2, v0, v1

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.fireStateChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1180
    return-void
.end method

.method private fireViewableChangeEvent()V
    .locals 2

    .prologue
    .line 1183
    const-string v0, "MRAIDView"

    const-string v1, "fireViewableChangeEvent"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isViewable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1185
    return-void
.end method

.method private forceFullScreen()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 943
    const-string v0, "MRAIDView"

    const-string v1, "forceFullScreen"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 947
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 948
    and-int/lit16 v1, v4, 0x400

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isFullScreen:Z

    .line 949
    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isForceNotFullScreen:Z

    .line 950
    const/16 v1, -0x9

    iput v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->origTitleBarVisibility:I

    .line 954
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v1, v4, :cond_4

    .line 955
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 956
    if-eqz v1, :cond_4

    .line 958
    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    iput-boolean v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->isActionBarShowing:Z

    .line 959
    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    move v1, v2

    .line 964
    :goto_2
    if-nez v1, :cond_0

    .line 966
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->titleBar:Landroid/view/View;

    .line 968
    const v1, 0x1020016

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->titleBar:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_3
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->titleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->origTitleBarVisibility:I

    .line 974
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->titleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 978
    :cond_0
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullScreen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->isFullScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForceNotFullScreen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->isForceNotFullScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActionBarShowing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->isActionBarShowing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "origTitleBarVisibility "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-static {v4}, Lcom/heyzap/common/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 985
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 987
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isFullScreen:Z

    if-nez v0, :cond_3

    :goto_4
    iput-boolean v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->isForcingFullScreen:Z

    .line 988
    return-void

    :cond_1
    move v1, v3

    .line 948
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 949
    goto/16 :goto_1

    :cond_3
    move v2, v3

    .line 987
    goto :goto_4

    .line 969
    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_4
    move v1, v3

    goto/16 :goto_2
.end method

.method private static getOrientationString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1585
    packed-switch p0, :pswitch_data_0

    .line 1589
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1586
    :pswitch_0
    const-string v0, "UNSPECIFIED"

    goto :goto_0

    .line 1587
    :pswitch_1
    const-string v0, "LANDSCAPE"

    goto :goto_0

    .line 1588
    :pswitch_2
    const-string v0, "PORTRAIT"

    goto :goto_0

    .line 1585
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 760
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 761
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 762
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const-string v3, "android_asset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 768
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    :goto_0
    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error fetching file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    .line 780
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    :goto_2
    return-object v0

    .line 775
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 782
    :cond_1
    const-string v0, "Unknown location to fetch file content"

    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    .line 785
    const-string v0, ""

    goto :goto_2
.end method

.method private getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 720
    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->getStringFromFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    :cond_0
    :goto_0
    return-object v0

    .line 727
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 728
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 729
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_5

    .line 731
    const-string v1, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContentLength "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 733
    const/16 v3, 0x5dc

    :try_start_1
    new-array v3, v3, [B

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 737
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 738
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 744
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    .line 745
    :goto_2
    :try_start_2
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringFromUrl failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 748
    if-eqz v2, :cond_0

    .line 749
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 751
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 740
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    .line 741
    :try_start_5
    const-string v3, "MRAIDView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringFromUrl ok, length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    .line 743
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 748
    if-eqz v2, :cond_3

    .line 749
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    move-object v0, v1

    .line 753
    goto/16 :goto_0

    .line 751
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 754
    goto/16 :goto_0

    .line 747
    :catchall_0
    move-exception v0

    .line 748
    :goto_4
    if-eqz v2, :cond_4

    .line 749
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 753
    :cond_4
    :goto_5
    throw v0

    .line 751
    :catch_3
    move-exception v1

    goto :goto_5

    .line 747
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 744
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_3
.end method

.method private static getVisibilityString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1008
    sparse-switch p0, :sswitch_data_0

    .line 1012
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1009
    :sswitch_0
    const-string v0, "GONE"

    goto :goto_0

    .line 1010
    :sswitch_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 1011
    :sswitch_2
    const-string v0, "VISIBLE"

    goto :goto_0

    .line 1008
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1151
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluating js: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    new-instance v0, Lcom/heyzap/common/mraid/MRAIDView$13;

    invoke-direct {v0, p0}, Lcom/heyzap/common/mraid/MRAIDView$13;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private injectJavaScript(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method private injectMraidJs(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_0

    .line 1116
    invoke-static {}, Lcom/heyzap/internal/Logger;->trace()V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    const-string v0, "Ly8NCi8vICBtcmFpZC5qcw0KLy8NCg0KKGZ1bmN0aW9uKCkgew0KCQ0KCWNvbnNvbGUubG9nKCJN UkFJRCBvYmplY3QgbG9hZGluZy4uLiIpOw0KDQoJLyoqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKg0KCSAqIE1S QUlEIGRlY2xhcmF0aW9uDQoJICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLw0KDQoJdmFyIG1yYWlkID0gd2lu ZG93Lm1yYWlkID0ge307DQoNCgkvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqDQoJICogY29uc29sZSBsb2dn aW5nIGhlbHBlcg0KCSAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8NCg0KCW1yYWlkLkxvZ0xldmVsRW51bSA9 IHsNCgkJIkRFQlVHIiAgIDogMCwNCgkJIklORk8iICAgIDogMSwNCgkJIldBUk5JTkciIDogMiwN CgkJIkVSUk9SIiAgIDogMywNCgkJIk5PTkUiICAgIDogNA0KCX07DQoNCgltcmFpZC5sb2dMZXZl bCA9IG1yYWlkLkxvZ0xldmVsRW51bS5OT05FOw0KCXZhciBsb2cgPSB7fTsNCg0KCWxvZy5kID0g ZnVuY3Rpb24obXNnKSB7DQoJCWlmIChtcmFpZC5sb2dMZXZlbCA8PSBtcmFpZC5Mb2dMZXZlbEVu dW0uREVCVUcpIHsNCgkJCWNvbnNvbGUubG9nKCIoRC1tcmFpZC5qcykgIiArIG1zZyk7DQoJCX0N Cgl9Ow0KDQoJbG9nLmkgPSBmdW5jdGlvbihtc2cpIHsNCgkJaWYgKG1yYWlkLmxvZ0xldmVsIDw9 IG1yYWlkLkxvZ0xldmVsRW51bS5JTkZPKSB7DQoJCQljb25zb2xlLmxvZygiKEktbXJhaWQuanMp ICIgKyBtc2cpOw0KCQl9DQoJfTsNCg0KCWxvZy53ID0gZnVuY3Rpb24obXNnKSB7DQoJCWlmICht cmFpZC5sb2dMZXZlbCA8PSBtcmFpZC5Mb2dMZXZlbEVudW0uV0FSTklORykgew0KCQkJY29uc29s ZS5sb2coIihXLW1yYWlkLmpzKSAiICsgbXNnKTsNCgkJfQ0KCX07DQoNCglsb2cuZSA9IGZ1bmN0 aW9uKG1zZykgew0KCQlpZiAobXJhaWQubG9nTGV2ZWwgPD0gbXJhaWQuTG9nTGV2ZWxFbnVtLkVS Uk9SKSB7DQoJCQljb25zb2xlLmxvZygiKEUtbXJhaWQuanMpICIgKyBtc2cpOw0KCQl9DQoJfTsN Cg0KCS8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioNCgkgKiBjb25zdGFudHMNCgkgKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KiovDQoNCgl2YXIgVkVSU0lPTiA9ICIyLjAiOw0KDQoJdmFyIFNUQVRFUyA9IG1yYWlkLlNUQVRF UyA9IHsNCgkJIkxPQURJTkciIDogImxvYWRpbmciLA0KCQkiREVGQVVMVCIgOiAiZGVmYXVsdCIs DQoJCSJFWFBBTkRFRCIgOiAiZXhwYW5kZWQiLA0KCQkiUkVTSVpFRCIgOiAicmVzaXplZCIsDQoJ CSJISURERU4iIDogImhpZGRlbiINCgl9Ow0KDQoJdmFyIFBMQUNFTUVOVF9UWVBFUyA9IG1yYWlk LlBMQUNFTUVOVF9UWVBFUyA9IHsNCgkJIklOTElORSIgOiAiaW5saW5lIiwNCgkJIklOVEVSU1RJ VElBTCIgOiAiaW50ZXJzdGl0aWFsIg0KCX07DQoNCgl2YXIgUkVTSVpFX1BST1BFUlRJRVNfQ1VT VE9NX0NMT1NFX1BPU0lUSU9OID0gbXJhaWQuUkVTSVpFX1BST1BFUlRJRVNfQ1VTVE9NX0NMT1NF X1BPU0lUSU9OID0gew0KCQkiVE9QX0xFRlQiIDogInRvcC1sZWZ0IiwNCgkJIlRPUF9DRU5URVIi IDogInRvcC1jZW50ZXIiLA0KCQkiVE9QX1JJR0hUIiA6ICJ0b3AtcmlnaHQiLA0KCQkiQ0VOVEVS IiA6ICJjZW50ZXIiLA0KCQkiQk9UVE9NX0xFRlQiIDogImJvdHRvbS1sZWZ0IiwNCgkJIkJPVFRP TV9DRU5URVIiIDogImJvdHRvbS1jZW50ZXIiLA0KCQkiQk9UVE9NX1JJR0hUIiA6ICJib3R0b20t cmlnaHQiDQoJfTsNCg0KCXZhciBPUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFU SU9OID0gbXJhaWQuT1JJRU5UQVRJT05fUFJPUEVSVElFU19GT1JDRV9PUklFTlRBVElPTiA9IHsN CgkJIlBPUlRSQUlUIiA6ICJwb3J0cmFpdCIsDQoJCSJMQU5EU0NBUEUiIDogImxhbmRzY2FwZSIs DQoJCSJOT05FIiA6ICJub25lIg0KCX07DQoNCgl2YXIgRVZFTlRTID0gbXJhaWQuRVZFTlRTID0g ew0KCQkiRVJST1IiIDogImVycm9yIiwNCgkJIlJFQURZIiA6ICJyZWFkeSIsDQoJCSJTSVpFQ0hB TkdFIiA6ICJzaXplQ2hhbmdlIiwNCgkJIlNUQVRFQ0hBTkdFIiA6ICJzdGF0ZUNoYW5nZSIsDQoJ CSJWSUVXQUJMRUNIQU5HRSIgOiAidmlld2FibGVDaGFuZ2UiDQoJfTsNCg0KCXZhciBTVVBQT1JU RURfRkVBVFVSRVMgPSBtcmFpZC5TVVBQT1JURURfRkVBVFVSRVMgPSB7DQoJCSJTTVMiIDogInNt cyIsDQoJCSJURUwiIDogInRlbCIsDQoJCSJDQUxFTkRBUiIgOiAiY2FsZW5kYXIiLA0KCQkiU1RP UkVQSUNUVVJFIiA6ICJzdG9yZVBpY3R1cmUiLA0KCQkiSU5MSU5FVklERU8iIDogImlubGluZVZp ZGVvIg0KCX07DQoNCgkvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqDQoJICogc3RhdGUNCgkgKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKiovDQoNCgl2YXIgc3RhdGUgPSBTVEFURVMuTE9BRElORzsNCgl2YXIgcGxhY2VtZW50 VHlwZSA9IFBMQUNFTUVOVF9UWVBFUy5JTkxJTkU7DQoJdmFyIHN1cHBvcnRlZEZlYXR1cmVzID0g e307DQoJdmFyIGlzVmlld2FibGUgPSBmYWxzZTsNCgl2YXIgaXNFeHBhbmRQcm9wZXJ0aWVzU2V0 ID0gZmFsc2U7DQoJdmFyIGlzUmVzaXplUmVhZHkgPSBmYWxzZTsNCg0KCXZhciBleHBhbmRQcm9w ZXJ0aWVzID0gew0KCQkid2lkdGgiIDogMCwNCgkJImhlaWdodCIgOiAwLA0KCQkidXNlQ3VzdG9t Q2xvc2UiIDogZmFsc2UsDQoJCSJpc01vZGFsIiA6IHRydWUNCgl9Ow0KDQoJdmFyIG9yaWVudGF0 aW9uUHJvcGVydGllcyA9IHsNCgkJImFsbG93T3JpZW50YXRpb25DaGFuZ2UiIDogdHJ1ZSwNCgkJ ImZvcmNlT3JpZW50YXRpb24iIDogT1JJRU5UQVRJT05fUFJPUEVSVElFU19GT1JDRV9PUklFTlRB VElPTi5OT05FDQoJfTsNCg0KCXZhciByZXNpemVQcm9wZXJ0aWVzID0gew0KCQkid2lkdGgiIDog MCwNCgkJImhlaWdodCIgOiAwLA0KCQkiY3VzdG9tQ2xvc2VQb3NpdGlvbiIgOiBSRVNJWkVfUFJP UEVSVElFU19DVVNUT01fQ0xPU0VfUE9TSVRJT04uVE9QX1JJR0hULA0KCQkib2Zmc2V0WCIgOiAw LA0KCQkib2Zmc2V0WSIgOiAwLA0KCQkiYWxsb3dPZmZzY3JlZW4iIDogdHJ1ZQ0KCX07DQoNCgl2 YXIgY3VycmVudFBvc2l0aW9uID0gew0KCQkieCIgOiAwLA0KCQkieSIgOiAwLA0KCQkid2lkdGgi IDogMCwNCgkJImhlaWdodCIgOiAwDQoJfTsNCg0KCXZhciBkZWZhdWx0UG9zaXRpb24gPSB7DQoJ CSJ4IiA6IDAsDQoJCSJ5IiA6IDAsDQoJCSJ3aWR0aCIgOiAwLA0KCQkiaGVpZ2h0IiA6IDANCgl9 Ow0KDQoJdmFyIG1heFNpemUgPSB7DQoJCSJ3aWR0aCIgOiAwLA0KCQkiaGVpZ2h0IiA6IDANCgl9 Ow0KDQoJdmFyIHNjcmVlblNpemUgPSB7DQoJCSJ3aWR0aCIgOiAwLA0KCQkiaGVpZ2h0IiA6IDAN Cgl9Ow0KDQoJdmFyIGN1cnJlbnRPcmllbnRhdGlvbiA9IDA7DQoNCgl2YXIgbGlzdGVuZXJzID0g e307DQoNCgkvKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqDQoJICogIm9mZmljaWFsIiBBUEk6IG1ldGhvZHMg Y2FsbGVkIGJ5IGNyZWF0aXZlDQoJICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLw0KDQoJbXJhaWQuYWRkRXZl bnRMaXN0ZW5lciA9IGZ1bmN0aW9uKGV2ZW50LCBsaXN0ZW5lcikgew0KCQlsb2cuaSgibXJhaWQu YWRkRXZlbnRMaXN0ZW5lciAiICsgZXZlbnQgKyAiOiAiICsgU3RyaW5nKGxpc3RlbmVyKSk7DQoJ CWlmICghZXZlbnQgfHwgIWxpc3RlbmVyKSB7DQoJCQltcmFpZC5maXJlRXJyb3JFdmVudCgiQm90 aCBldmVudCBhbmQgbGlzdGVuZXIgYXJlIHJlcXVpcmVkLiIsICJhZGRFdmVudExpc3RlbmVyIik7 DQoJCQlyZXR1cm47DQoJCX0NCgkJaWYgKCFjb250YWlucyhldmVudCwgRVZFTlRTKSkgew0KCQkJ bXJhaWQuZmlyZUVycm9yRXZlbnQoIlVua25vd24gTVJBSUQgZXZlbnQ6ICIgKyBldmVudCwgImFk ZEV2ZW50TGlzdGVuZXIiKTsNCgkJCXJldHVybjsNCgkJfQ0KCQl2YXIgbGlzdGVuZXJzRm9yRXZl bnQgPSBsaXN0ZW5lcnNbZXZlbnRdID0gbGlzdGVuZXJzW2V2ZW50XSB8fCBbXTsNCgkJLy8gY2hl Y2sgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIGxpc3RlbmVyIGlzbid0IGFscmVhZHkgcmVnaXN0ZXJl ZA0KCQlmb3IgKHZhciBpID0gMDsgaSA8IGxpc3RlbmVyc0ZvckV2ZW50Lmxlbmd0aDsgaSsrKSB7 DQoJCQl2YXIgc3RyMSA9IFN0cmluZyhsaXN0ZW5lcik7DQoJCQl2YXIgc3RyMiA9IFN0cmluZyhs aXN0ZW5lcnNGb3JFdmVudFtpXSk7DQoJCQlpZiAobGlzdGVuZXIgPT09IGxpc3RlbmVyc0ZvckV2 ZW50W2ldIHx8IHN0cjEgPT09IHN0cjIpIHsNCgkJCQlsb2cuaSgibGlzdGVuZXIgIiArIHN0cjEg KyAiIGlzIGFscmVhZHkgcmVnaXN0ZXJlZCBmb3IgZXZlbnQgIiArIGV2ZW50KTsNCgkJCQlyZXR1 cm47DQoJCQl9DQoJCX0NCgkJbGlzdGVuZXJzRm9yRXZlbnQucHVzaChsaXN0ZW5lcik7DQoJfTsN Cg0KCW1yYWlkLmNyZWF0ZUNhbGVuZGFyRXZlbnQgPSBmdW5jdGlvbihwYXJhbWV0ZXJzKSB7DQoJ CWxvZy5pKCJtcmFpZC5jcmVhdGVDYWxlbmRhckV2ZW50IHdpdGggIiArIHBhcmFtZXRlcnMpOw0K CQlpZiAoc3VwcG9ydGVkRmVhdHVyZXNbbXJhaWQuU1VQUE9SVEVEX0ZFQVRVUkVTLkNBTEVOREFS XSkgew0KCQkJY2FsbE5hdGl2ZSgiY3JlYXRlQ2FsZW5kYXJFdmVudD9ldmVudEpTT049IgkrIEpT T04uc3RyaW5naWZ5KHBhcmFtZXRlcnMpKTsNCgkJfSBlbHNlIHsNCgkJCWxvZy5lKCJjcmVhdGVD YWxlbmRhckV2ZW50IGlzIG5vdCBzdXBwb3J0ZWQiKTsNCgkJfQ0KCX07DQoNCgltcmFpZC5jbG9z ZSA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuY2xvc2UiKTsNCgkJaWYgKHN0YXRlID09 PSBTVEFURVMuTE9BRElORw0KCQkJCXx8IChzdGF0ZSA9PT0gU1RBVEVTLkRFRkFVTFQgJiYgcGxh Y2VtZW50VHlwZSA9PT0gUExBQ0VNRU5UX1RZUEVTLklOTElORSkNCgkJCQl8fCBzdGF0ZSA9PT0g U1RBVEVTLkhJRERFTikgew0KCQkJLy8gZG8gbm90aGluZw0KCQkJcmV0dXJuOw0KCQl9DQoJCWNh bGxOYXRpdmUoImNsb3NlIik7DQoJfTsNCg0KCW1yYWlkLmV4cGFuZCA9IGZ1bmN0aW9uKHVybCkg ew0KCQlpZiAodXJsID09PSB1bmRlZmluZWQpIHsNCgkJCWxvZy5pKCJtcmFpZC5leHBhbmQgKDEt cGFydCkiKTsNCgkJfSBlbHNlIHsNCgkJCWxvZy5pKCJtcmFpZC5leHBhbmQgIiArIHVybCk7DQoJ CX0NCgkJLy8gVGhlIG9ubHkgdGltZSBpdCBpcyB2YWxpZCB0byBjYWxsIGV4cGFuZCBpcyB3aGVu IHRoZSBhZCBpcw0KCQkvLyBhIGJhbm5lciBjdXJyZW50bHkgaW4gZWl0aGVyIGRlZmF1bHQgb3Ig cmVzaXplZCBzdGF0ZS4NCgkJaWYgKHBsYWNlbWVudFR5cGUgIT09IFBMQUNFTUVOVF9UWVBFUy5J TkxJTkUNCgkJCQl8fCAoc3RhdGUgIT09IFNUQVRFUy5ERUZBVUxUICYmIHN0YXRlICE9PSBTVEFU RVMuUkVTSVpFRCkpIHsNCgkJCXJldHVybjsNCgkJfQ0KCQlpZiAodXJsID09PSB1bmRlZmluZWQp IHsNCgkJCWNhbGxOYXRpdmUoImV4cGFuZCIpOw0KCQl9IGVsc2Ugew0KCQkJY2FsbE5hdGl2ZSgi ZXhwYW5kP3VybD0iICsgZW5jb2RlVVJJQ29tcG9uZW50KHVybCkpOw0KCQl9DQoJfTsNCg0KCW1y YWlkLmdldEN1cnJlbnRQb3NpdGlvbiA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0 Q3VycmVudFBvc2l0aW9uIik7DQoJCXJldHVybiBjdXJyZW50UG9zaXRpb247DQoJfTsNCg0KCW1y YWlkLmdldERlZmF1bHRQb3NpdGlvbiA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0 RGVmYXVsdFBvc2l0aW9uIik7DQoJCXJldHVybiBkZWZhdWx0UG9zaXRpb247DQoJfTsNCg0KCW1y YWlkLmdldEV4cGFuZFByb3BlcnRpZXMgPSBmdW5jdGlvbigpIHsNCgkJbG9nLmkoIm1yYWlkLmdl dEV4cGFuZFByb3BlcnRpZXMiKTsNCgkJcmV0dXJuIGV4cGFuZFByb3BlcnRpZXM7DQoJfTsNCg0K CW1yYWlkLmdldE1heFNpemUgPSBmdW5jdGlvbigpIHsNCgkJbG9nLmkoIm1yYWlkLmdldE1heFNp emUiKTsNCgkJcmV0dXJuIG1heFNpemU7DQoJfTsNCg0KCW1yYWlkLmdldE9yaWVudGF0aW9uUHJv cGVydGllcyA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZ2V0T3JpZW50YXRpb25Qcm9w ZXJ0aWVzIik7DQoJCXJldHVybiBvcmllbnRhdGlvblByb3BlcnRpZXM7DQoJfTsNCg0KCW1yYWlk LmdldFBsYWNlbWVudFR5cGUgPSBmdW5jdGlvbigpIHsNCgkJbG9nLmkoIm1yYWlkLmdldFBsYWNl bWVudFR5cGUiKTsNCgkJcmV0dXJuIHBsYWNlbWVudFR5cGU7DQoJfTsNCg0KCW1yYWlkLmdldFJl c2l6ZVByb3BlcnRpZXMgPSBmdW5jdGlvbigpIHsNCgkJbG9nLmkoIm1yYWlkLmdldFJlc2l6ZVBy b3BlcnRpZXMiKTsNCgkJcmV0dXJuIHJlc2l6ZVByb3BlcnRpZXM7DQoJfTsNCg0KCW1yYWlkLmdl dFNjcmVlblNpemUgPSBmdW5jdGlvbigpIHsNCgkJbG9nLmkoIm1yYWlkLmdldFNjcmVlblNpemUi KTsNCgkJcmV0dXJuIHNjcmVlblNpemU7DQoJfTsNCg0KCW1yYWlkLmdldFN0YXRlID0gZnVuY3Rp b24oKSB7DQoJCWxvZy5pKCJtcmFpZC5nZXRTdGF0ZSIpOw0KCQlyZXR1cm4gc3RhdGU7DQoJfTsN Cg0KCW1yYWlkLmdldFZlcnNpb24gPSBmdW5jdGlvbigpIHsNCgkJbG9nLmkoIm1yYWlkLmdldFZl cnNpb24iKTsNCgkJcmV0dXJuIFZFUlNJT047DQoJfTsNCg0KCW1yYWlkLmlzVmlld2FibGUgPSBm dW5jdGlvbigpIHsNCgkJbG9nLmkoIm1yYWlkLmlzVmlld2FibGUiKTsNCgkJcmV0dXJuIGlzVmll d2FibGU7DQoJfTsNCg0KCW1yYWlkLm9wZW4gPSBmdW5jdGlvbih1cmwpIHsNCgkJbG9nLmkoIm1y YWlkLm9wZW4gIiArIHVybCk7DQoJCWNhbGxOYXRpdmUoIm9wZW4/dXJsPSIgKyBlbmNvZGVVUklD b21wb25lbnQodXJsKSk7DQoJfTsNCg0KCW1yYWlkLnBsYXlWaWRlbyA9IGZ1bmN0aW9uKHVybCkg ew0KCQlsb2cuaSgibXJhaWQucGxheVZpZGVvICIgKyB1cmwpOw0KCQljYWxsTmF0aXZlKCJwbGF5 VmlkZW8/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7DQoJfTsNCg0KCW1yYWlkLnJl bW92ZUV2ZW50TGlzdGVuZXIgPSBmdW5jdGlvbihldmVudCwgbGlzdGVuZXIpIHsNCgkJbG9nLmko Im1yYWlkLnJlbW92ZUV2ZW50TGlzdGVuZXIgIiArIGV2ZW50ICsgIiA6ICIgKyBTdHJpbmcobGlz dGVuZXIpKTsNCgkJaWYgKCFldmVudCkgew0KCQkJbXJhaWQuZmlyZUVycm9yRXZlbnQoIkV2ZW50 IGlzIHJlcXVpcmVkLiIsICJyZW1vdmVFdmVudExpc3RlbmVyIik7DQoJCQlyZXR1cm47DQoJCX0N CgkJaWYgKCFjb250YWlucyhldmVudCwgRVZFTlRTKSkgew0KCQkJbXJhaWQuZmlyZUVycm9yRXZl bnQoIlVua25vd24gTVJBSUQgZXZlbnQ6ICIgKyBldmVudCwgInJlbW92ZUV2ZW50TGlzdGVuZXIi KTsNCgkJCXJldHVybjsNCgkJfQ0KCQlpZiAobGlzdGVuZXJzLmhhc093blByb3BlcnR5KGV2ZW50 KSkgew0KCQkJaWYgKGxpc3RlbmVyKSB7DQoJCQkJdmFyIGxpc3RlbmVyc0ZvckV2ZW50ID0gbGlz dGVuZXJzW2V2ZW50XTsNCgkJCQkvLyB0cnkgdG8gZmluZCB0aGUgZ2l2ZW4gbGlzdGVuZXINCgkJ CQl2YXIgbGVuID0gbGlzdGVuZXJzRm9yRXZlbnQubGVuZ3RoOw0KCQkJCWZvciAodmFyIGkgPSAw OyBpIDwgbGVuOyBpKyspIHsNCgkJCQkJdmFyIHJlZ2lzdGVyZWRMaXN0ZW5lciA9IGxpc3RlbmVy c0ZvckV2ZW50W2ldOw0KCQkJCQl2YXIgc3RyMSA9IFN0cmluZyhsaXN0ZW5lcik7DQoJCQkJCXZh ciBzdHIyID0gU3RyaW5nKHJlZ2lzdGVyZWRMaXN0ZW5lcik7DQoJCQkJCWlmIChsaXN0ZW5lciA9 PT0gcmVnaXN0ZXJlZExpc3RlbmVyIHx8IHN0cjEgPT09IHN0cjIpIHsNCgkJCQkJCWxpc3RlbmVy c0ZvckV2ZW50LnNwbGljZShpLCAxKTsNCgkJCQkJCWJyZWFrOw0KCQkJCQl9DQoJCQkJfQ0KCQkJ CWlmIChpID09PSBsZW4pIHsNCgkJCQkJbG9nLmkoImxpc3RlbmVyICIgKyBzdHIxICsgIiBub3Qg Zm91bmQgZm9yIGV2ZW50ICIgKyBldmVudCk7DQoJCQkJfQ0KCQkJCWlmIChsaXN0ZW5lcnNGb3JF dmVudC5sZW5ndGggPT09IDApIHsNCgkJCQkJZGVsZXRlIGxpc3RlbmVyc1tldmVudF07DQoJCQkJ fQ0KCQkJfSBlbHNlIHsNCgkJCQkvLyBubyBsaXN0ZW5lciB0byByZW1vdmUgd2FzIHByb3ZpZGVk LCBzbyByZW1vdmUgYWxsIGxpc3RlbmVycw0KCQkJCS8vIGZvciBnaXZlbiBldmVudA0KCQkJCWRl bGV0ZSBsaXN0ZW5lcnNbZXZlbnRdOw0KCQkJfQ0KCQl9IGVsc2Ugew0KCQkJbG9nLmkoIm5vIGxp c3RlbmVycyByZWdpc3RlcmVkIGZvciBldmVudCAiICsgZXZlbnQpOw0KCQl9DQoJfTsNCg0KCW1y YWlkLnJlc2l6ZSA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQucmVzaXplIik7DQoJCS8v IFRoZSBvbmx5IHRpbWUgaXQgaXMgdmFsaWQgdG8gY2FsbCByZXNpemUgaXMgd2hlbiB0aGUgYWQg aXMNCgkJLy8gYSBiYW5uZXIgY3VycmVudGx5IGluIGVpdGhlciBkZWZhdWx0IG9yIHJlc2l6ZWQg c3RhdGUuDQoJCS8vIFRyaWdnZXIgYW4gZXJyb3IgaWYgdGhlIGN1cnJlbnQgc3RhdGUgaXMgZXhw YW5kZWQuDQoJCWlmIChwbGFjZW1lbnRUeXBlID09PSBQTEFDRU1FTlRfVFlQRVMuSU5URVJTVElU SUFMIHx8IHN0YXRlID09PSBTVEFURVMuTE9BRElORyB8fCBzdGF0ZSA9PT0gU1RBVEVTLkhJRERF Tikgew0KCQkJLy8gZG8gbm90aGluZw0KCQkJcmV0dXJuOw0KCQl9DQoJCWlmIChzdGF0ZSA9PT0g U1RBVEVTLkVYUEFOREVEKSB7DQoJCQltcmFpZC5maXJlRXJyb3JFdmVudCgibXJhaWQucmVzaXpl IGNhbGxlZCB3aGVuIGFkIGlzIGluIGV4cGFuZGVkIHN0YXRlIiwgIm1yYWlkLnJlc2l6ZSIpOw0K CQkJcmV0dXJuOw0KCQl9DQoJCWlmICghaXNSZXNpemVSZWFkeSkgew0KCQkJbXJhaWQuZmlyZUVy cm9yRXZlbnQoIm1yYWlkLnJlc2l6ZSBpcyBub3QgcmVhZHkgdG8gYmUgY2FsbGVkIiwgIm1yYWlk LnJlc2l6ZSIpOw0KCQkJcmV0dXJuOw0KCQl9DQoJCWNhbGxOYXRpdmUoInJlc2l6ZSIpOw0KCX07 DQoNCgltcmFpZC5zZXRFeHBhbmRQcm9wZXJ0aWVzID0gZnVuY3Rpb24ocHJvcGVydGllcykgew0K CQlsb2cuaSgibXJhaWQuc2V0RXhwYW5kUHJvcGVydGllcyIpOw0KDQoJCWlmICghdmFsaWRhdGUo cHJvcGVydGllcywgInNldEV4cGFuZFByb3BlcnRpZXMiKSkgew0KCQkJbG9nLmUoImZhaWxlZCB2 YWxpZGF0aW9uIik7DQoJCQlyZXR1cm47DQoJCX0NCg0KCQl2YXIgb2xkVXNlQ3VzdG9tQ2xvc2Ug PSBleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlOw0KDQoJCS8vIGV4cGFuZFByb3BlcnRp ZXMgY29udGFpbnMgMyByZWFkLXdyaXRlIHByb3BlcnRpZXM6IHdpZHRoLCBoZWlnaHQsIGFuZCB1 c2VDdXN0b21DbG9zZTsNCgkJLy8gdGhlIGlzTW9kYWwgcHJvcGVydHkgaXMgcmVhZC1vbmx5DQoJ CXZhciByd1Byb3BzID0gWyAid2lkdGgiLCAiaGVpZ2h0IiwgInVzZUN1c3RvbUNsb3NlIiBdOw0K CQlmb3IgKHZhciBpID0gMDsgaSA8IHJ3UHJvcHMubGVuZ3RoOyBpKyspIHsNCgkJCXZhciBwcm9w bmFtZSA9IHJ3UHJvcHNbaV07DQoJCQlpZiAocHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eShwcm9w bmFtZSkpIHsNCgkJCQlleHBhbmRQcm9wZXJ0aWVzW3Byb3BuYW1lXSA9IHByb3BlcnRpZXNbcHJv cG5hbWVdOw0KCQkJfQ0KCQl9DQoNCgkJLy8gSW4gTVJBSUQgdjIuMCwgYWxsIGV4cGFuZGVkIGFk cyBieSBkZWZpbml0aW9uIGNvdmVyIHRoZSBlbnRpcmUgc2NyZWVuLA0KCQkvLyBzbyB0aGUgb25s eSBwcm9wZXJ0eSB0aGF0IHRoZSBuYXRpdmUgc2lkZSBoYXMgdG8ga25vdyBhYm91dCBpcyB1c2VD dXN0b21DbG9zZS4NCgkJLy8gKFRoYXQgaXMsIHRoZSB3aWR0aCBhbmQgaGVpZ2h0IHByb3BlcnRp ZXMgYXJlIG5vdCBuZWVkZWQgYnkgdGhlIG5hdGl2ZSBjb2RlLikNCgkJaWYgKGV4cGFuZFByb3Bl cnRpZXMudXNlQ3VzdG9tQ2xvc2UgIT09IG9sZFVzZUN1c3RvbUNsb3NlKSB7DQoJCQljYWxsTmF0 aXZlKCJ1c2VDdXN0b21DbG9zZT91c2VDdXN0b21DbG9zZT0iCSsgZXhwYW5kUHJvcGVydGllcy51 c2VDdXN0b21DbG9zZSk7DQoJCX0NCgkJDQoJCWlzRXhwYW5kUHJvcGVydGllc1NldCA9IHRydWU7 DQoJfTsNCg0KCW1yYWlkLnNldE9yaWVudGF0aW9uUHJvcGVydGllcyA9IGZ1bmN0aW9uKHByb3Bl cnRpZXMpIHsNCgkJbG9nLmkoIm1yYWlkLnNldE9yaWVudGF0aW9uUHJvcGVydGllcyIpOw0KDQoJ CWlmICghdmFsaWRhdGUocHJvcGVydGllcywgInNldE9yaWVudGF0aW9uUHJvcGVydGllcyIpKSB7 DQoJCQlsb2cuZSgiZmFpbGVkIHZhbGlkYXRpb24iKTsNCgkJCXJldHVybjsNCgkJfQ0KDQoJCXZh ciBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMgPSB7fTsNCgkJbmV3T3JpZW50YXRpb25Qcm9wZXJ0 aWVzLmFsbG93T3JpZW50YXRpb25DaGFuZ2UgPSBvcmllbnRhdGlvblByb3BlcnRpZXMuYWxsb3dP cmllbnRhdGlvbkNoYW5nZSwNCgkJbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50 YXRpb24gPSBvcmllbnRhdGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRhdGlvbjsNCg0KCQkvLyBv cmllbnRhdGlvblByb3BlcnRpZXMgY29udGFpbnMgMiByZWFkLXdyaXRlIHByb3BlcnRpZXM6DQoJ CS8vIGFsbG93T3JpZW50YXRpb25DaGFuZ2UgYW5kIGZvcmNlT3JpZW50YXRpb24NCgkJdmFyIHJ3 UHJvcHMgPSBbICJhbGxvd09yaWVudGF0aW9uQ2hhbmdlIiwgImZvcmNlT3JpZW50YXRpb24iIF07 DQoJCWZvciAodmFyIGkgPSAwOyBpIDwgcndQcm9wcy5sZW5ndGg7IGkrKykgew0KCQkJdmFyIHBy b3BuYW1lID0gcndQcm9wc1tpXTsNCgkJCWlmIChwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KHBy b3BuYW1lKSkgew0KCQkJCW5ld09yaWVudGF0aW9uUHJvcGVydGllc1twcm9wbmFtZV0gPSBwcm9w ZXJ0aWVzW3Byb3BuYW1lXTsNCgkJCX0NCgkJfQ0KDQoJCS8vIFNldHRpbmcgYWxsb3dPcmllbnRh dGlvbkNoYW5nZSB0byB0cnVlIHdoaWxlIHNldHRpbmcgZm9yY2VPcmllbnRhdGlvbg0KCQkvLyB0 byBlaXRoZXIgcG9ydHJhaXQgb3IgbGFuZHNjYXBlDQoJCS8vIGlzIGNvbnNpZGVyZWQgYW4gZXJy b3IgY29uZGl0aW9uLg0KCQlpZiAobmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFsbG93T3JpZW50 YXRpb25DaGFuZ2UNCgkJCQkmJiBuZXdPcmllbnRhdGlvblByb3BlcnRpZXMuZm9yY2VPcmllbnRh dGlvbiAhPT0gbXJhaWQuT1JJRU5UQVRJT05fUFJPUEVSVElFU19GT1JDRV9PUklFTlRBVElPTi5O T05FKSB7DQoJCQltcmFpZC5maXJlRXJyb3JFdmVudCgNCgkJCQkJImFsbG93T3JpZW50YXRpb25D aGFuZ2UgaXMgdHJ1ZSBidXQgZm9yY2VPcmllbnRhdGlvbiBpcyAiDQoJCQkJCSsgbmV3T3JpZW50 YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb24sDQoJCQkJCSJzZXRPcmllbnRhdGlvblBy b3BlcnRpZXMiKTsNCgkJCXJldHVybjsNCgkJfQ0KDQoJCW9yaWVudGF0aW9uUHJvcGVydGllcy5h bGxvd09yaWVudGF0aW9uQ2hhbmdlID0gbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmFsbG93T3Jp ZW50YXRpb25DaGFuZ2U7DQoJCW9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9u ID0gbmV3T3JpZW50YXRpb25Qcm9wZXJ0aWVzLmZvcmNlT3JpZW50YXRpb247DQoNCgkJdmFyIHBh cmFtcyA9ICJhbGxvd09yaWVudGF0aW9uQ2hhbmdlPSINCgkJCQkrIG9yaWVudGF0aW9uUHJvcGVy dGllcy5hbGxvd09yaWVudGF0aW9uQ2hhbmdlDQoJCQkJKyAiJmZvcmNlT3JpZW50YXRpb249IiAr IG9yaWVudGF0aW9uUHJvcGVydGllcy5mb3JjZU9yaWVudGF0aW9uOw0KDQoJCWNhbGxOYXRpdmUo InNldE9yaWVudGF0aW9uUHJvcGVydGllcz8iICsgcGFyYW1zKTsNCgl9Ow0KDQoJbXJhaWQuc2V0 UmVzaXplUHJvcGVydGllcyA9IGZ1bmN0aW9uKHByb3BlcnRpZXMpIHsNCgkJbG9nLmkoIm1yYWlk LnNldFJlc2l6ZVByb3BlcnRpZXMiKTsNCgkJDQoJCWlzUmVzaXplUmVhZHkgPSBmYWxzZTsNCg0K CQkvLyByZXNpemVQcm9wZXJ0aWVzIGNvbnRhaW5zIDYgcmVhZC13cml0ZSBwcm9wZXJ0aWVzOg0K CQkvLyB3aWR0aCwgaGVpZ2h0LCBvZmZzZXRYLCBvZmZzZXRZLCBjdXN0b21DbG9zZVBvc2l0aW9u LCBhbGxvd09mZnNjcmVlbg0KDQoJCS8vIFRoZSBwcm9wZXJ0aWVzIG9iamVjdCBwYXNzZWQgaW50 byB0aGlzIGZ1bmN0aW9uIG11c3QgY29udGFpbiB3aWR0aCwgaGVpZ2h0LCBvZmZzZXRYLCBvZmZz ZXRZLg0KCQkvLyBUaGUgcmVtYWluaW5nIHR3byBwcm9wZXJ0aWVzIGFyZSBvcHRpb25hbC4NCgkJ dmFyIHJlcXVpcmVkUHJvcHMgPSBbICJ3aWR0aCIsICJoZWlnaHQiLCAib2Zmc2V0WCIsICJvZmZz ZXRZIiBdOw0KCQlmb3IgKHZhciBpID0gMDsgaSA8IHJlcXVpcmVkUHJvcHMubGVuZ3RoOyBpKysp IHsNCgkJCXZhciBwcm9wbmFtZSA9IHJlcXVpcmVkUHJvcHNbaV07DQoJCQlpZiAoIXByb3BlcnRp ZXMuaGFzT3duUHJvcGVydHkocHJvcG5hbWUpKSB7DQoJCQkJbXJhaWQuZmlyZUVycm9yRXZlbnQo DQoJCQkJCQkicmVxdWlyZWQgcHJvcGVydHkgIiArIHByb3BuYW1lICsgIiBpcyBtaXNzaW5nIiwN CgkJCQkJCSJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7DQoJCQkJcmV0dXJuOw0KCQkJfQ0K CQl9DQoJCQ0KCQlpZiAoIXZhbGlkYXRlKHByb3BlcnRpZXMsICJzZXRSZXNpemVQcm9wZXJ0aWVz IikpIHsNCgkJCW1yYWlkLmZpcmVFcnJvckV2ZW50KCJmYWlsZWQgdmFsaWRhdGlvbiIsICJtcmFp ZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7DQoJCQlyZXR1cm47DQoJCX0NCgkJDQogICAgICAgIHZh ciBhZGp1c3RtZW50cyA9IHsgIngiOiAwLCAieSI6IDAgfTsNCgkJDQoJCXZhciBhbGxvd09mZnNj cmVlbiA9IHByb3BlcnRpZXMuaGFzT3duUHJvcGVydHkoImFsbG93T2Zmc2NyZWVuIikgPyBwcm9w ZXJ0aWVzLmFsbG93T2Zmc2NyZWVuIDogcmVzaXplUHJvcGVydGllcy5hbGxvd09mZnNjcmVlbjsN CiAgICAgICAgaWYgKCFhbGxvd09mZnNjcmVlbikgew0KICAgICAgICAgICAgaWYgKHByb3BlcnRp ZXMud2lkdGggPiBtYXhTaXplLndpZHRoIHx8IHByb3BlcnRpZXMuaGVpZ2h0ID4gbWF4U2l6ZS5o ZWlnaHQpIHsNCiAgICAgICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgicmVzaXplIHdp ZHRoIG9yIGhlaWdodCBpcyBncmVhdGVyIHRoYW4gdGhlIG1heFNpemUgd2lkdGggb3IgaGVpZ2h0 IiwgIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTsNCiAgICAgICAgICAgICAgICByZXR1cm47 DQogICAgICAgICAgICB9DQogICAgICAgICAgICBhZGp1c3RtZW50cyA9IGZpdFJlc2l6ZVZpZXdP blNjcmVlbihwcm9wZXJ0aWVzKTsNCiAgICAgICAgfSBlbHNlIGlmICghaXNDbG9zZVJlZ2lvbk9u U2NyZWVuKHByb3BlcnRpZXMpKSB7DQogICAgICAgICAgICBtcmFpZC5maXJlRXJyb3JFdmVudCgi Y2xvc2UgZXZlbnQgcmVnaW9uIHdpbGwgbm90IGFwcGVhciBlbnRpcmVseSBvbnNjcmVlbiIsICJt cmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7DQogICAgICAgICAgICByZXR1cm47DQogICAgICAg IH0NCgkJDQoJCXZhciByd1Byb3BzID0gWyAid2lkdGgiLCAiaGVpZ2h0IiwgIm9mZnNldFgiLCAi b2Zmc2V0WSIsICJjdXN0b21DbG9zZVBvc2l0aW9uIiwgImFsbG93T2Zmc2NyZWVuIiBdOw0KCQlm b3IgKHZhciBpID0gMDsgaSA8IHJ3UHJvcHMubGVuZ3RoOyBpKyspIHsNCgkJCXZhciBwcm9wbmFt ZSA9IHJ3UHJvcHNbaV07DQoJCQlpZiAocHJvcGVydGllcy5oYXNPd25Qcm9wZXJ0eShwcm9wbmFt ZSkpIHsNCgkJCQlyZXNpemVQcm9wZXJ0aWVzW3Byb3BuYW1lXSA9IHByb3BlcnRpZXNbcHJvcG5h bWVdOw0KCQkJfQ0KCQl9DQoJCQ0KCQl2YXIgcGFyYW1zID0NCgkJCSJ3aWR0aD0iICsgcmVzaXpl UHJvcGVydGllcy53aWR0aCArDQoJCQkiJmhlaWdodD0iICsgcmVzaXplUHJvcGVydGllcy5oZWln aHQgKw0KCSAgICAgICAgIiZvZmZzZXRYPSIgKyAocmVzaXplUHJvcGVydGllcy5vZmZzZXRYICsg YWRqdXN0bWVudHMueCkgKw0KCSAgICAgICAgIiZvZmZzZXRZPSIgKyAocmVzaXplUHJvcGVydGll cy5vZmZzZXRZICsgYWRqdXN0bWVudHMueSkgKw0KCQkJIiZjdXN0b21DbG9zZVBvc2l0aW9uPSIg KyByZXNpemVQcm9wZXJ0aWVzLmN1c3RvbUNsb3NlUG9zaXRpb24gKw0KCQkJIiZhbGxvd09mZnNj cmVlbj0iICsgcmVzaXplUHJvcGVydGllcy5hbGxvd09mZnNjcmVlbjsNCg0KCQljYWxsTmF0aXZl KCJzZXRSZXNpemVQcm9wZXJ0aWVzPyIgKyBwYXJhbXMpOw0KDQoJCWlzUmVzaXplUmVhZHkgPSB0 cnVlOw0KCX07DQoNCgltcmFpZC5zdG9yZVBpY3R1cmUgPSBmdW5jdGlvbih1cmwpIHsNCgkJbG9n LmkoIm1yYWlkLnN0b3JlUGljdHVyZSAiICsgdXJsKTsNCgkJaWYgKHN1cHBvcnRlZEZlYXR1cmVz W21yYWlkLlNVUFBPUlRFRF9GRUFUVVJFUy5TVE9SRVBJQ1RVUkVdKSB7DQoJCQljYWxsTmF0aXZl KCJzdG9yZVBpY3R1cmU/dXJsPSIgKyBlbmNvZGVVUklDb21wb25lbnQodXJsKSk7DQoJCX0gZWxz ZSB7DQoJCQlsb2cuZSgic3RvcmVQaWN0dXJlIGlzIG5vdCBzdXBwb3J0ZWQiKTsNCgkJfQ0KCX07 DQoNCgltcmFpZC5zdXBwb3J0cyA9IGZ1bmN0aW9uKGZlYXR1cmUpIHsNCgkJbG9nLmkoIm1yYWlk LnN1cHBvcnRzICIgKyBmZWF0dXJlICsgIiAiICsgc3VwcG9ydGVkRmVhdHVyZXNbZmVhdHVyZV0p Ow0KCQl2YXIgcmV0dmFsID0gc3VwcG9ydGVkRmVhdHVyZXNbZmVhdHVyZV07DQoJCWlmICh0eXBl b2YgcmV0dmFsID09PSAidW5kZWZpbmVkIikgew0KCQkJcmV0dmFsID0gZmFsc2U7DQoJCX0NCgkJ cmV0dXJuIHJldHZhbDsNCgl9Ow0KDQoJbXJhaWQudXNlQ3VzdG9tQ2xvc2UgPSBmdW5jdGlvbihp c0N1c3RvbUNsb3NlKSB7DQoJCWxvZy5pKCJtcmFpZC51c2VDdXN0b21DbG9zZSAiICsgaXNDdXN0 b21DbG9zZSk7DQoJCWlmIChleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlICE9PSBpc0N1 c3RvbUNsb3NlKSB7DQoJCQlleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlID0gaXNDdXN0 b21DbG9zZTsNCgkJCWNhbGxOYXRpdmUoInVzZUN1c3RvbUNsb3NlP3VzZUN1c3RvbUNsb3NlPSIN CgkJCQkJKyBleHBhbmRQcm9wZXJ0aWVzLnVzZUN1c3RvbUNsb3NlKTsNCgkJfQ0KCX07DQoNCgkv KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqDQoJICogaGVscGVyIG1ldGhvZHMgY2FsbGVkIGJ5IFNESw0KCSAq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKi8NCg0KCS8vIHNldHRlcnMgdG8gY2hhbmdlIHN0YXRlDQoJbXJhaWQu c2V0Q3VycmVudFBvc2l0aW9uID0gZnVuY3Rpb24oeCwgeSwgd2lkdGgsIGhlaWdodCkgew0KCQls b2cuaSgibXJhaWQuc2V0Q3VycmVudFBvc2l0aW9uICIgKyB4ICsgIiwiICsgeSArICIsIiArIHdp ZHRoICsgIiwiCSsgaGVpZ2h0KTsNCg0KCQl2YXIgcHJldmlvdXNTaXplID0ge307DQoJCXByZXZp b3VzU2l6ZS53aWR0aCA9IGN1cnJlbnRQb3NpdGlvbi53aWR0aDsNCgkJcHJldmlvdXNTaXplLmhl aWdodCA9IGN1cnJlbnRQb3NpdGlvbi5oZWlnaHQ7DQoJCWxvZy5pKCJwcmV2aW91c1NpemUgIiAr IHByZXZpb3VzU2l6ZS53aWR0aCArICIsIiArIHByZXZpb3VzU2l6ZS5oZWlnaHQpOw0KDQoJCWN1 cnJlbnRQb3NpdGlvbi54ID0geDsNCgkJY3VycmVudFBvc2l0aW9uLnkgPSB5Ow0KCQljdXJyZW50 UG9zaXRpb24ud2lkdGggPSB3aWR0aDsNCgkJY3VycmVudFBvc2l0aW9uLmhlaWdodCA9IGhlaWdo dDsNCg0KCQlpZiAod2lkdGggIT09IHByZXZpb3VzU2l6ZS53aWR0aCB8fCBoZWlnaHQgIT09IHBy ZXZpb3VzU2l6ZS5oZWlnaHQpIHsNCgkJCW1yYWlkLmZpcmVTaXplQ2hhbmdlRXZlbnQod2lkdGgs IGhlaWdodCk7DQoJCX0NCgl9Ow0KDQoJbXJhaWQuc2V0RGVmYXVsdFBvc2l0aW9uID0gZnVuY3Rp b24oeCwgeSwgd2lkdGgsIGhlaWdodCkgew0KCQlsb2cuaSgibXJhaWQuc2V0RGVmYXVsdFBvc2l0 aW9uICIgKyB4ICsgIiwiICsgeSArICIsIiArIHdpZHRoICsgIiwiCSsgaGVpZ2h0KTsNCgkJZGVm YXVsdFBvc2l0aW9uLnggPSB4Ow0KCQlkZWZhdWx0UG9zaXRpb24ueSA9IHk7DQoJCWRlZmF1bHRQ b3NpdGlvbi53aWR0aCA9IHdpZHRoOw0KCQlkZWZhdWx0UG9zaXRpb24uaGVpZ2h0ID0gaGVpZ2h0 Ow0KCX07DQoNCgltcmFpZC5zZXRFeHBhbmRTaXplID0gZnVuY3Rpb24od2lkdGgsIGhlaWdodCkg ew0KCQlsb2cuaSgibXJhaWQuc2V0RXhwYW5kU2l6ZSAiICsgd2lkdGggKyAieCIgKyBoZWlnaHQp Ow0KCQlleHBhbmRQcm9wZXJ0aWVzLndpZHRoID0gd2lkdGg7DQoJCWV4cGFuZFByb3BlcnRpZXMu aGVpZ2h0ID0gaGVpZ2h0Ow0KCX07DQoNCgltcmFpZC5zZXRNYXhTaXplID0gZnVuY3Rpb24od2lk dGgsIGhlaWdodCkgew0KCQlsb2cuaSgibXJhaWQuc2V0TWF4U2l6ZSAiICsgd2lkdGggKyAieCIg KyBoZWlnaHQpOw0KCQltYXhTaXplLndpZHRoID0gd2lkdGg7DQoJCW1heFNpemUuaGVpZ2h0ID0g aGVpZ2h0Ow0KCX07DQoNCgltcmFpZC5zZXRQbGFjZW1lbnRUeXBlID0gZnVuY3Rpb24ocHQpIHsN CgkJbG9nLmkoIm1yYWlkLnNldFBsYWNlbWVudFR5cGUgIiArIHB0KTsNCgkJcGxhY2VtZW50VHlw ZSA9IHB0Ow0KCX07DQoNCgltcmFpZC5zZXRTY3JlZW5TaXplID0gZnVuY3Rpb24od2lkdGgsIGhl aWdodCkgew0KCQlsb2cuaSgibXJhaWQuc2V0U2NyZWVuU2l6ZSAiICsgd2lkdGggKyAieCIgKyBo ZWlnaHQpOw0KCQlzY3JlZW5TaXplLndpZHRoID0gd2lkdGg7DQoJCXNjcmVlblNpemUuaGVpZ2h0 ID0gaGVpZ2h0Ow0KCQlpZiAoIWlzRXhwYW5kUHJvcGVydGllc1NldCkgew0KCQkJZXhwYW5kUHJv cGVydGllcy53aWR0aCA9IHdpZHRoOw0KCQkJZXhwYW5kUHJvcGVydGllcy5oZWlnaHQgPSBoZWln aHQ7Ow0KCQl9DQoJfTsNCg0KCW1yYWlkLnNldFN1cHBvcnRzID0gZnVuY3Rpb24oZmVhdHVyZSwg c3VwcG9ydGVkKSB7DQoJCWxvZy5pKCJtcmFpZC5zZXRTdXBwb3J0cyAiICsgZmVhdHVyZSArICIg IiArIHN1cHBvcnRlZCk7DQoJCXN1cHBvcnRlZEZlYXR1cmVzW2ZlYXR1cmVdID0gc3VwcG9ydGVk Ow0KCX07DQoNCgkvLyBtZXRob2RzIHRvIGZpcmUgZXZlbnRzDQoNCgltcmFpZC5maXJlRXJyb3JF dmVudCA9IGZ1bmN0aW9uKG1lc3NhZ2UsIGFjdGlvbikgew0KCQlsb2cuaSgibXJhaWQuZmlyZUVy cm9yRXZlbnQgIiArIG1lc3NhZ2UgKyAiICIgKyBhY3Rpb24pOw0KCQlmaXJlRXZlbnQobXJhaWQu RVZFTlRTLkVSUk9SLCBtZXNzYWdlLCBhY3Rpb24pOw0KCX07DQoNCgltcmFpZC5maXJlUmVhZHlF dmVudCA9IGZ1bmN0aW9uKCkgew0KCQlsb2cuaSgibXJhaWQuZmlyZVJlYWR5RXZlbnQiKTsNCgkJ ZmlyZUV2ZW50KG1yYWlkLkVWRU5UUy5SRUFEWSk7DQoJfTsNCg0KCW1yYWlkLmZpcmVTaXplQ2hh bmdlRXZlbnQgPSBmdW5jdGlvbih3aWR0aCwgaGVpZ2h0KSB7DQoJCWxvZy5pKCJtcmFpZC5maXJl U2l6ZUNoYW5nZUV2ZW50ICIgKyB3aWR0aCArICJ4IiArIGhlaWdodCk7DQoJCWlmIChzdGF0ZSAh PT0gbXJhaWQuU1RBVEVTLkxPQURJTkcpIHsNCgkJCWZpcmVFdmVudChtcmFpZC5FVkVOVFMuU0la RUNIQU5HRSwgd2lkdGgsIGhlaWdodCk7DQoJCX0NCgl9Ow0KDQoJbXJhaWQuZmlyZVN0YXRlQ2hh bmdlRXZlbnQgPSBmdW5jdGlvbihuZXdTdGF0ZSkgew0KCQlsb2cuaSgibXJhaWQuZmlyZVN0YXRl Q2hhbmdlRXZlbnQgIiArIG5ld1N0YXRlKTsNCgkJaWYgKHN0YXRlICE9PSBuZXdTdGF0ZSkgew0K CQkJc3RhdGUgPSBuZXdTdGF0ZTsNCgkJCWZpcmVFdmVudChtcmFpZC5FVkVOVFMuU1RBVEVDSEFO R0UsIHN0YXRlKTsNCgkJfQ0KCX07DQoNCgltcmFpZC5maXJlVmlld2FibGVDaGFuZ2VFdmVudCA9 IGZ1bmN0aW9uKG5ld0lzVmlld2FibGUpIHsNCgkJbG9nLmkoIm1yYWlkLmZpcmVWaWV3YWJsZUNo YW5nZUV2ZW50ICIgKyBuZXdJc1ZpZXdhYmxlKTsNCgkJaWYgKGlzVmlld2FibGUgIT09IG5ld0lz Vmlld2FibGUpIHsNCgkJCWlzVmlld2FibGUgPSBuZXdJc1ZpZXdhYmxlOw0KCQkJZmlyZUV2ZW50 KG1yYWlkLkVWRU5UUy5WSUVXQUJMRUNIQU5HRSwgaXNWaWV3YWJsZSk7DQoJCX0NCgl9Ow0KDQoJ LyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqKioqKioqKg0KCSAqIGludGVybmFsIGhlbHBlciBtZXRob2RzDQoJICoqKioq KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq KioqKioqKioqKioqLw0KDQoJZnVuY3Rpb24gY2FsbE5hdGl2ZShjb21tYW5kKSB7DQoJCXZhciBp ZnJhbWUgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KCJJRlJBTUUiKTsNCgkJaWZyYW1lLnNldEF0 dHJpYnV0ZSgic3JjIiwgIm1yYWlkOi8vIiArIGNvbW1hbmQpOw0KCQlkb2N1bWVudC5kb2N1bWVu dEVsZW1lbnQuYXBwZW5kQ2hpbGQoaWZyYW1lKTsNCgkJaWZyYW1lLnBhcmVudE5vZGUucmVtb3Zl Q2hpbGQoaWZyYW1lKTsNCgkJaWZyYW1lID0gbnVsbDsNCgl9Ow0KDQoJZnVuY3Rpb24gZmlyZUV2 ZW50KGV2ZW50KSB7DQoJCXZhciBhcmdzID0gQXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwoYXJn dW1lbnRzKTsNCgkJYXJncy5zaGlmdCgpOw0KCQlsb2cuaSgiZmlyZUV2ZW50ICIgKyBldmVudCAr ICIgWyIgKyBhcmdzLnRvU3RyaW5nKCkgKyAiXSIpOw0KCQl2YXIgZXZlbnRMaXN0ZW5lcnMgPSBs aXN0ZW5lcnNbZXZlbnRdOw0KCQlpZiAoZXZlbnRMaXN0ZW5lcnMpIHsNCgkJCXZhciBsZW4gPSBl dmVudExpc3RlbmVycy5sZW5ndGg7DQoJCQlsb2cuaShsZW4gKyAiIGxpc3RlbmVyKHMpIGZvdW5k Iik7DQoJCQlmb3IgKHZhciBpID0gMDsgaSA8IGxlbjsgaSsrKSB7DQoJCQkJZXZlbnRMaXN0ZW5l cnNbaV0uYXBwbHkobnVsbCwgYXJncyk7DQoJCQl9DQoJCX0gZWxzZSB7DQoJCQlsb2cuaSgibm8g bGlzdGVuZXJzIGZvdW5kIik7DQoJCX0NCgl9Ow0KDQoJZnVuY3Rpb24gY29udGFpbnModmFsdWUs IGFycmF5KSB7DQoJCWZvciAoIHZhciBpIGluIGFycmF5KSB7DQoJCQlpZiAoYXJyYXlbaV0gPT09 IHZhbHVlKSB7DQoJCQkJcmV0dXJuIHRydWU7DQoJCQl9DQoJCX0NCgkJcmV0dXJuIGZhbHNlOw0K CX07DQoNCgkvLyBUaGUgYWN0aW9uIHBhcmFtZXRlciBpcyBhIHN0cmluZyB3aGljaCBpcyB0aGUg bmFtZSBvZiB0aGUgc2V0dGVyIGZ1bmN0aW9uDQoJLy8gd2hpY2ggY2FsbGVkIHRoaXMgZnVuY3Rp b24NCgkvLyAoaW4gb3RoZXIgd29yZHMsIHNldEV4cGFuZFByb3BldGllcywgc2V0T3JpZW50YXRp b25Qcm9wZXJ0aWVzLCBvcg0KCS8vIHNldFJlc2l6ZVByb3BlcnRpZXMpLg0KCS8vIEl0IHNlcnZl cyBib3RoIGFzIHRoZSBrZXkgdG8gZ2V0IHRoZSB0aGUgYXBwcm9wcmlhdGUgc2V0IG9mIHZhbGlk YXRpbmcNCgkvLyBmdW5jdGlvbnMgZnJvbSB0aGUgYWxsVmFsaWRhdG9ycyBvYmplY3QNCgkvLyBh cyB3ZWxsIGFzIHRoZSBhY3Rpb24gcGFyYW1ldGVyIG9mIGFueSBlcnJvciBldmVudCB0aGF0IG1h eSBiZSB0aHJvd24uDQoJZnVuY3Rpb24gdmFsaWRhdGUocHJvcGVydGllcywgYWN0aW9uKSB7DQoJ CXZhciByZXR2YWwgPSB0cnVlOw0KCQl2YXIgdmFsaWRhdG9ycyA9IGFsbFZhbGlkYXRvcnNbYWN0 aW9uXTsNCgkJZm9yICh2YXIgcHJvcCBpbiBwcm9wZXJ0aWVzKSB7DQoJCQl2YXIgdmFsaWRhdG9y ID0gdmFsaWRhdG9yc1twcm9wXTsNCgkJCXZhciB2YWx1ZSA9IHByb3BlcnRpZXNbcHJvcF07DQoJ CQlpZiAodmFsaWRhdG9yICYmICF2YWxpZGF0b3IodmFsdWUpKSB7DQoJCQkJbXJhaWQuZmlyZUVy cm9yRXZlbnQoIlZhbHVlIG9mIHByb3BlcnR5ICIgKyBwcm9wICsgIiAoIiArIHZhbHVlCSsgIikg aXMgaW52YWxpZCIsICJtcmFpZC4iICsgYWN0aW9uKTsNCgkJCQlyZXR2YWwgPSBmYWxzZTsNCgkJ CX0NCgkJfQ0KCQlyZXR1cm4gcmV0dmFsOw0KCX07DQoNCgl2YXIgYWxsVmFsaWRhdG9ycyA9IHsN CgkJInNldEV4cGFuZFByb3BlcnRpZXMiIDogew0KCQkJLy8gSW4gTVJBSUQgMi4wLCB0aGUgb25s eSBwcm9wZXJ0eSBpbiBleHBhbmRQcm9wZXJ0aWVzIHdlIGFjdHVhbGx5IGNhcmUgYWJvdXQgaXMg dXNlQ3VzdG9tQ2xvc2UuDQoJCQkvLyBTdGlsbCwgd2UnbGwgZG8gYSBiYXNpYyBzYW5pdHkgY2hl Y2sgb24gdGhlIHdpZHRoIGFuZCBoZWlnaHQgcHJvcGVydGllcywgdG9vLg0KCQkJIndpZHRoIiA6 IGZ1bmN0aW9uKHdpZHRoKSB7DQoJCQkJcmV0dXJuICFpc05hTih3aWR0aCk7DQoJCQl9LA0KCQkJ ImhlaWdodCIgOiBmdW5jdGlvbihoZWlnaHQpIHsNCgkJCQlyZXR1cm4gIWlzTmFOKGhlaWdodCk7 DQoJCQl9LA0KCQkJInVzZUN1c3RvbUNsb3NlIiA6IGZ1bmN0aW9uKHVzZUN1c3RvbUNsb3NlKSB7 DQoJCQkJcmV0dXJuICh0eXBlb2YgdXNlQ3VzdG9tQ2xvc2UgPT09ICJib29sZWFuIik7DQoJCQl9 DQoJCX0sDQoJCSJzZXRPcmllbnRhdGlvblByb3BlcnRpZXMiIDogew0KCQkJImFsbG93T3JpZW50 YXRpb25DaGFuZ2UiIDogZnVuY3Rpb24oYWxsb3dPcmllbnRhdGlvbkNoYW5nZSkgew0KCQkJCXJl dHVybiAodHlwZW9mIGFsbG93T3JpZW50YXRpb25DaGFuZ2UgPT09ICJib29sZWFuIik7DQoJCQl9 LA0KCQkJImZvcmNlT3JpZW50YXRpb24iIDogZnVuY3Rpb24oZm9yY2VPcmllbnRhdGlvbikgew0K CQkJCXZhciB2YWxpZFZhbHVlcyA9IFsgInBvcnRyYWl0IiwgImxhbmRzY2FwZSIsICJub25lIiBd Ow0KCQkJCXJldHVybiAodHlwZW9mIGZvcmNlT3JpZW50YXRpb24gPT09ICJzdHJpbmciICYmIHZh bGlkVmFsdWVzLmluZGV4T2YoZm9yY2VPcmllbnRhdGlvbikgIT09IC0xKTsNCgkJCX0NCgkJfSwN CgkJInNldFJlc2l6ZVByb3BlcnRpZXMiIDogew0KCQkJIndpZHRoIiA6IGZ1bmN0aW9uKHdpZHRo KSB7DQoJCQkJcmV0dXJuICFpc05hTih3aWR0aCkgJiYgNTAgPD0gd2lkdGg7DQoJCQl9LA0KCQkJ ImhlaWdodCIgOiBmdW5jdGlvbihoZWlnaHQpIHsNCgkJCQlyZXR1cm4gIWlzTmFOKGhlaWdodCkg JiYgNTAgPD0gaGVpZ2h0Ow0KCQkJfSwNCgkJCSJvZmZzZXRYIiA6IGZ1bmN0aW9uKG9mZnNldFgp IHsNCgkJCQlyZXR1cm4gIWlzTmFOKG9mZnNldFgpOw0KCQkJfSwNCgkJCSJvZmZzZXRZIiA6IGZ1 bmN0aW9uKG9mZnNldFkpIHsNCgkJCQlyZXR1cm4gIWlzTmFOKG9mZnNldFkpOw0KCQkJfSwNCgkJ CSJjdXN0b21DbG9zZVBvc2l0aW9uIiA6IGZ1bmN0aW9uKGN1c3RvbUNsb3NlUG9zaXRpb24pIHsN CgkJCQl2YXIgdmFsaWRQb3NpdGlvbnMgPSBbICJ0b3AtbGVmdCIsICJ0b3AtY2VudGVyIiwgInRv cC1yaWdodCIsDQoJCQkJICAgICAgICAgICAgICAgICAgICAgICAiY2VudGVyIiwNCgkJCQkgICAg ICAgICAgICAgICAgICAgICAgICJib3R0b20tbGVmdCIsICJib3R0b20tY2VudGVyIiwJImJvdHRv bS1yaWdodCIgXTsNCgkJCQlyZXR1cm4gKHR5cGVvZiBjdXN0b21DbG9zZVBvc2l0aW9uID09PSAi c3RyaW5nIiAmJiB2YWxpZFBvc2l0aW9ucy5pbmRleE9mKGN1c3RvbUNsb3NlUG9zaXRpb24pICE9 PSAtMSk7DQoJCQl9LA0KCQkJImFsbG93T2Zmc2NyZWVuIiA6IGZ1bmN0aW9uKGFsbG93T2Zmc2Ny ZWVuKSB7DQoJCQkJcmV0dXJuICh0eXBlb2YgYWxsb3dPZmZzY3JlZW4gPT09ICJib29sZWFuIik7 DQoJCQl9DQoJCX0NCgl9Ow0KCQ0KICAgIGZ1bmN0aW9uIGlzQ2xvc2VSZWdpb25PblNjcmVlbihw cm9wZXJ0aWVzKSB7DQogICAgICAgIGxvZy5kKCJpc0Nsb3NlUmVnaW9uT25TY3JlZW4iKTsNCiAg ICAgICAgbG9nLmQoImRlZmF1bHRQb3NpdGlvbiAiICsgZGVmYXVsdFBvc2l0aW9uLnggKyAiICIg KyBkZWZhdWx0UG9zaXRpb24ueSk7DQogICAgICAgIGxvZy5kKCJvZmZzZXQgIiArIHByb3BlcnRp ZXMub2Zmc2V0WCArICIgIiArIHByb3BlcnRpZXMub2Zmc2V0WSk7DQoNCiAgICAgICAgdmFyIHJl c2l6ZVJlY3QgPSB7fTsNCiAgICAgICAgcmVzaXplUmVjdC54ID0gZGVmYXVsdFBvc2l0aW9uLngg KyBwcm9wZXJ0aWVzLm9mZnNldFg7DQogICAgICAgIHJlc2l6ZVJlY3QueSA9IGRlZmF1bHRQb3Np dGlvbi55ICsgcHJvcGVydGllcy5vZmZzZXRZOw0KICAgICAgICByZXNpemVSZWN0LndpZHRoID0g cHJvcGVydGllcy53aWR0aDsNCiAgICAgICAgcmVzaXplUmVjdC5oZWlnaHQgPSBwcm9wZXJ0aWVz LmhlaWdodDsNCiAgICAgICAgcHJpbnRSZWN0KCJyZXNpemVSZWN0IiwgcmVzaXplUmVjdCk7DQoN CgkJdmFyIGN1c3RvbUNsb3NlUG9zaXRpb24gPSBwcm9wZXJ0aWVzLmhhc093blByb3BlcnR5KCJj dXN0b21DbG9zZVBvc2l0aW9uIikgPw0KCQkJCXByb3BlcnRpZXMuY3VzdG9tQ2xvc2VQb3NpdGlv biA6IHJlc2l6ZVByb3BlcnRpZXMuY3VzdG9tQ2xvc2VQb3NpdGlvbjsNCiAgICAgICAgbG9nLmQo ImN1c3RvbUNsb3NlUG9zaXRpb24gIiArIGN1c3RvbUNsb3NlUG9zaXRpb24pOw0KICAgICAgICAN CiAgICAgICAgdmFyIGNsb3NlUmVjdCA9IHsgIndpZHRoIjogNTAsICJoZWlnaHQiOiA1MCB9Ow0K DQogICAgICAgIGlmIChjdXN0b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgibGVmdCIpICE9PSAtMSkg ew0KICAgICAgICAgICAgY2xvc2VSZWN0LnggPSByZXNpemVSZWN0Lng7DQogICAgICAgIH0gZWxz ZSBpZiAoY3VzdG9tQ2xvc2VQb3NpdGlvbi5zZWFyY2goImNlbnRlciIpICE9PSAtMSkgew0KICAg ICAgICAgICAgY2xvc2VSZWN0LnggPSByZXNpemVSZWN0LnggKyAocmVzaXplUmVjdC53aWR0aCAv IDIpIC0gMjU7DQogICAgICAgIH0gZWxzZSBpZiAoY3VzdG9tQ2xvc2VQb3NpdGlvbi5zZWFyY2go InJpZ2h0IikgIT09IC0xKSB7DQogICAgICAgICAgICBjbG9zZVJlY3QueCA9IHJlc2l6ZVJlY3Qu eCArIHJlc2l6ZVJlY3Qud2lkdGggLSA1MDsNCiAgICAgICAgfQ0KDQogICAgICAgIGlmIChjdXN0 b21DbG9zZVBvc2l0aW9uLnNlYXJjaCgidG9wIikgIT09IC0xKSB7DQogICAgICAgICAgICBjbG9z ZVJlY3QueSA9IHJlc2l6ZVJlY3QueTsNCiAgICAgICAgfSBlbHNlIGlmIChjdXN0b21DbG9zZVBv c2l0aW9uID09PSAiY2VudGVyIikgew0KICAgICAgICAgICAgY2xvc2VSZWN0LnkgPSByZXNpemVS ZWN0LnkgKyAocmVzaXplUmVjdC5oZWlnaHQgLyAyKSAtIDI1Ow0KICAgICAgICB9IGVsc2UgaWYg KGN1c3RvbUNsb3NlUG9zaXRpb24uc2VhcmNoKCJib3R0b20iKSAhPT0gLTEpIHsNCiAgICAgICAg ICAgIGNsb3NlUmVjdC55ID0gcmVzaXplUmVjdC55ICsgcmVzaXplUmVjdC5oZWlnaHQgLSA1MDsN CiAgICAgICAgfQ0KDQogICAgICAgIHZhciBtYXhSZWN0ID0geyAieCI6IDAsICJ5IjogMCB9Ow0K ICAgICAgICBtYXhSZWN0LndpZHRoID0gbWF4U2l6ZS53aWR0aDsNCiAgICAgICAgbWF4UmVjdC5o ZWlnaHQgPSBtYXhTaXplLmhlaWdodDsNCg0KICAgICAgICByZXR1cm4gaXNSZWN0Q29udGFpbmVk KG1heFJlY3QsIGNsb3NlUmVjdCk7DQogICAgfQ0KICAgIA0KICAgIGZ1bmN0aW9uIGZpdFJlc2l6 ZVZpZXdPblNjcmVlbihwcm9wZXJ0aWVzKSB7DQogICAgICAgIGxvZy5kKCJmaXRSZXNpemVWaWV3 T25TY3JlZW4iKTsNCiAgICAgICAgbG9nLmQoImRlZmF1bHRQb3NpdGlvbiAiICsgZGVmYXVsdFBv c2l0aW9uLnggKyAiICIgKyBkZWZhdWx0UG9zaXRpb24ueSk7DQogICAgICAgIGxvZy5kKCJvZmZz ZXQgIiArIHByb3BlcnRpZXMub2Zmc2V0WCArICIgIiArIHByb3BlcnRpZXMub2Zmc2V0WSk7DQoN CiAgICAgICAgdmFyIHJlc2l6ZVJlY3QgPSB7fTsNCiAgICAgICAgcmVzaXplUmVjdC54ID0gZGVm YXVsdFBvc2l0aW9uLnggKyBwcm9wZXJ0aWVzLm9mZnNldFg7DQogICAgICAgIHJlc2l6ZVJlY3Qu eSA9IGRlZmF1bHRQb3NpdGlvbi55ICsgcHJvcGVydGllcy5vZmZzZXRZOw0KICAgICAgICByZXNp emVSZWN0LndpZHRoID0gcHJvcGVydGllcy53aWR0aDsNCiAgICAgICAgcmVzaXplUmVjdC5oZWln aHQgPSBwcm9wZXJ0aWVzLmhlaWdodDsNCiAgICAgICAgcHJpbnRSZWN0KCJyZXNpemVSZWN0Iiwg cmVzaXplUmVjdCk7DQoNCiAgICAgICAgdmFyIG1heFJlY3QgPSB7ICJ4IjogMCwgInkiOiAwIH07 DQogICAgICAgIG1heFJlY3Qud2lkdGggPSBtYXhTaXplLndpZHRoOw0KICAgICAgICBtYXhSZWN0 LmhlaWdodCA9IG1heFNpemUuaGVpZ2h0Ow0KDQogICAgICAgIHZhciBhZGp1c3RtZW50cyA9IHsg IngiOiAwLCAieSI6IDAgfTsNCg0KICAgICAgICBpZiAoaXNSZWN0Q29udGFpbmVkKG1heFJlY3Qs IHJlc2l6ZVJlY3QpKSB7DQogICAgICAgICAgICBsb2cuZCgibm8gYWRqdXN0bWVudCBuZWNlc3Nh cnkiKTsNCiAgICAgICAgICAgIHJldHVybiBhZGp1c3RtZW50czsNCiAgICAgICAgfQ0KDQogICAg ICAgIGlmIChyZXNpemVSZWN0LnggPCBtYXhSZWN0LngpIHsNCiAgICAgICAgICAgIGFkanVzdG1l bnRzLnggPSBtYXhSZWN0LnggLSByZXNpemVSZWN0Lng7DQogICAgICAgIH0gZWxzZSBpZiAoKHJl c2l6ZVJlY3QueCArIHJlc2l6ZVJlY3Qud2lkdGgpID4gKG1heFJlY3QueCArIG1heFJlY3Qud2lk dGgpKSB7DQogICAgICAgICAgICBhZGp1c3RtZW50cy54ID0gKG1heFJlY3QueCArIG1heFJlY3Qu d2lkdGgpIC0gKHJlc2l6ZVJlY3QueCArIHJlc2l6ZVJlY3Qud2lkdGgpOw0KICAgICAgICB9DQog ICAgICAgIGxvZy5kKCJhZGp1c3RtZW50cy54ICIgKyBhZGp1c3RtZW50cy54KTsNCg0KICAgICAg ICBpZiAocmVzaXplUmVjdC55IDwgbWF4UmVjdC55KSB7DQogICAgICAgICAgICBhZGp1c3RtZW50 cy55ID0gbWF4UmVjdC55IC0gcmVzaXplUmVjdC55Ow0KICAgICAgICB9IGVsc2UgaWYgKChyZXNp emVSZWN0LnkgKyByZXNpemVSZWN0LmhlaWdodCkgPiAobWF4UmVjdC55ICsgbWF4UmVjdC5oZWln aHQpKSB7DQogICAgICAgICAgICBhZGp1c3RtZW50cy55ID0gKG1heFJlY3QueSArIG1heFJlY3Qu aGVpZ2h0KSAtIChyZXNpemVSZWN0LnkgKyByZXNpemVSZWN0LmhlaWdodCk7DQogICAgICAgIH0N CiAgICAgICAgbG9nLmQoImFkanVzdG1lbnRzLnkgIiArIGFkanVzdG1lbnRzLnkpOw0KDQogICAg ICAgIHJlc2l6ZVJlY3QueCA9IGRlZmF1bHRQb3NpdGlvbi54ICsgcHJvcGVydGllcy5vZmZzZXRY ICsgYWRqdXN0bWVudHMueDsNCiAgICAgICAgcmVzaXplUmVjdC55ID0gZGVmYXVsdFBvc2l0aW9u LnkgKyBwcm9wZXJ0aWVzLm9mZnNldFkgKyBhZGp1c3RtZW50cy55Ow0KICAgICAgICBwcmludFJl Y3QoImFkanVzdGVkIHJlc2l6ZVJlY3QiLCByZXNpemVSZWN0KTsNCg0KICAgICAgICByZXR1cm4g YWRqdXN0bWVudHM7DQogICAgfQ0KICAgIA0KICAgIGZ1bmN0aW9uIGlzUmVjdENvbnRhaW5lZChj b250YWluaW5nUmVjdCwgY29udGFpbmVkUmVjdCkgew0KICAgICAgICBsb2cuZCgiaXNSZWN0Q29u dGFpbmVkIik7DQogICAgICAgIHByaW50UmVjdCgiY29udGFpbmluZ1JlY3QiLCBjb250YWluaW5n UmVjdCk7DQogICAgICAgIHByaW50UmVjdCgiY29udGFpbmVkUmVjdCIsIGNvbnRhaW5lZFJlY3Qp Ow0KICAgICAgICByZXR1cm4gKGNvbnRhaW5lZFJlY3QueCA+PSBjb250YWluaW5nUmVjdC54ICYm DQogICAgICAgICAgICAoY29udGFpbmVkUmVjdC54ICsgY29udGFpbmVkUmVjdC53aWR0aCkgPD0g KGNvbnRhaW5pbmdSZWN0LnggKyBjb250YWluaW5nUmVjdC53aWR0aCkgJiYNCiAgICAgICAgICAg IGNvbnRhaW5lZFJlY3QueSA+PSBjb250YWluaW5nUmVjdC55ICYmDQogICAgICAgICAgICAoY29u dGFpbmVkUmVjdC55ICsgY29udGFpbmVkUmVjdC5oZWlnaHQpIDw9IChjb250YWluaW5nUmVjdC55 ICsgY29udGFpbmluZ1JlY3QuaGVpZ2h0KSk7DQogICAgfQ0KICAgIA0KICAgIGZ1bmN0aW9uIHBy aW50UmVjdChsYWJlbCwgcmVjdCkgew0KICAgICAgICBsb2cuZChsYWJlbCArDQogICAgICAgICAg ICAiIFsiICsgcmVjdC54ICsgIiwiICsgcmVjdC55ICsgIl0iICsNCiAgICAgICAgICAgICIsWyIg KyAocmVjdC54ICsgcmVjdC53aWR0aCkgKyAiLCIgKyAocmVjdC55ICsgcmVjdC5oZWlnaHQpICsg Il0iICsNCiAgICAgICAgICAgICIgKCIgKyByZWN0LndpZHRoICsgIngiICsgcmVjdC5oZWlnaHQg KyAiKSIpOw0KICAgIH0NCgkNCgltcmFpZC5kdW1wTGlzdGVuZXJzID0gZnVuY3Rpb24oKSB7DQoJ CXZhciBuRXZlbnRzID0gT2JqZWN0LmtleXMobGlzdGVuZXJzKS5sZW5ndGg7DQoJCWxvZy5pKCJk dW1waW5nIGxpc3RlbmVycyAoIiArIG5FdmVudHMgKyAiIGV2ZW50cykiKTsNCgkJZm9yICggdmFy IGV2ZW50IGluIGxpc3RlbmVycykgew0KCQkJdmFyIGV2ZW50TGlzdGVuZXJzID0gbGlzdGVuZXJz W2V2ZW50XTsNCgkJCWxvZy5pKCIgICIgKyBldmVudCArICIgY29udGFpbnMgIiArIGV2ZW50TGlz dGVuZXJzLmxlbmd0aCArICIgbGlzdGVuZXJzIik7DQoJCQlmb3IgKHZhciBpID0gMDsgaSA8IGV2 ZW50TGlzdGVuZXJzLmxlbmd0aDsgaSsrKSB7DQoJCQkJbG9nLmkoIiAgICAiICsgZXZlbnRMaXN0 ZW5lcnNbaV0pOw0KCQkJfQ0KCQl9DQoJfTsNCgkNCgljb25zb2xlLmxvZygiTVJBSUQgb2JqZWN0 IGxvYWRlZCIpOw0KDQp9KSgpOw=="

    .line 1122
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1123
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    .line 1126
    :cond_1
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectMraidJs ok "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v0, "<html></html>"

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1130
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$12;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$12;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1140
    :goto_0
    return-void

    .line 1137
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidJs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method private onLayoutWebView(Landroid/webkit/WebView;ZIIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1451
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 1452
    :goto_0
    const-string v4, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLayoutWebView "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-ne p1, v3, :cond_2

    const-string v3, "1 "

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    if-nez v0, :cond_3

    .line 1455
    const-string v0, "MRAIDView"

    const-string v1, "onLayoutWebView ignored, not current"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1451
    goto :goto_0

    .line 1452
    :cond_2
    const-string v3, "2 "

    goto :goto_1

    .line 1458
    :cond_3
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isForcingFullScreen:Z

    if-eqz v0, :cond_4

    .line 1459
    const-string v0, "MRAIDView"

    const-string v1, "onLayoutWebView ignored, isForcingFullScreen"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iput-boolean v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->isForcingFullScreen:Z

    goto :goto_2

    .line 1463
    :cond_4
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-ne v0, v1, :cond_6

    .line 1464
    :cond_5
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->calculateScreenSize()V

    .line 1465
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->calculateMaxSize()V

    .line 1469
    :cond_6
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isClosing:Z

    if-nez v0, :cond_7

    .line 1470
    invoke-direct {p0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->calculatePosition(Z)V

    .line 1471
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_7

    .line 1473
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1474
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    .line 1475
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setDefaultPosition()V

    .line 1480
    :cond_7
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isExpandingFromDefault:Z

    if-eqz v0, :cond_0

    .line 1481
    iput-boolean v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->isExpandingFromDefault:Z

    .line 1482
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_8

    .line 1483
    iput v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 1484
    iput-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isLaidOut:Z

    .line 1486
    :cond_8
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isExpandingPart2:Z

    if-nez v0, :cond_9

    .line 1487
    const-string v0, "MRAIDView"

    const-string v1, "calling fireStateChangeEvent 1"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1490
    :cond_9
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_a

    .line 1491
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireReadyEvent()V

    .line 1492
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isViewable:Z

    if-eqz v0, :cond_a

    .line 1493
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireViewableChangeEvent()V

    .line 1496
    :cond_a
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->listener:Lcom/heyzap/common/mraid/MRAIDViewListener;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->listener:Lcom/heyzap/common/mraid/MRAIDViewListener;

    invoke-interface {v0, p0}, Lcom/heyzap/common/mraid/MRAIDViewListener;->mraidViewExpand(Lcom/heyzap/common/mraid/MRAIDView;)V

    goto :goto_2
.end method

.method private open(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 580
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_0

    .line 583
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    invoke-interface {v1, v2, v0}, Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureSendSms(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const-string v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 586
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    invoke-interface {v1, v2, v0}, Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCallTel(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 588
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    invoke-interface {v1, v2, v0}, Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureOpenBrowser(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private parseCommandUrl(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 412
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCommandUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v0, Lcom/heyzap/common/mraid/internal/MRAIDParser;

    invoke-direct {v0}, Lcom/heyzap/common/mraid/internal/MRAIDParser;-><init>()V

    .line 415
    invoke-virtual {v0, p1}, Lcom/heyzap/common/mraid/internal/MRAIDParser;->parseCommandUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 417
    const-string v0, "command"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "close"

    aput-object v3, v2, v6

    const-string v3, "resize"

    aput-object v3, v2, v7

    .line 424
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "createCalendarEvent"

    aput-object v4, v3, v6

    const-string v4, "expand"

    aput-object v4, v3, v7

    const-string v4, "open"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string v5, "playVideo"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "storePicture"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "useCustomClose"

    aput-object v5, v3, v4

    .line 433
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "setOrientationProperties"

    aput-object v5, v4, v6

    const-string v5, "setResizeProperties"

    aput-object v5, v4, v7

    .line 439
    :try_start_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 441
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 445
    const-string v3, "createCalendarEvent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    const-string v0, "eventJSON"

    .line 452
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 447
    :cond_2
    :try_start_1
    const-string v3, "useCustomClose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    const-string v0, "useCustomClose"

    goto :goto_1

    .line 450
    :cond_3
    const-string v0, "url"

    goto :goto_1

    .line 454
    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 456
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private pauseWebView(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1237
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseWebView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1241
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 1246
    :goto_0
    return-void

    .line 1243
    :cond_0
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playVideo(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 599
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    invoke-interface {v1, v2, v0}, Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;->mraidNativeFeaturePlayVideo(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private px2dip(I)I
    .locals 2

    .prologue
    .line 1188
    mul-int/lit16 v0, p1, 0xa0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v0, v1

    return v0
.end method

.method private removeDefaultCloseButton()V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1053
    :cond_0
    return-void
.end method

.method private removeResizeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 934
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 935
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 936
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 937
    iput-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    .line 938
    iput-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    .line 939
    return-void
.end method

.method private resize()V
    .locals 6

    .prologue
    .line 611
    const-string v0, "MRAIDView-JS callback"

    const-string v1, "resize"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->listener:Lcom/heyzap/common/mraid/MRAIDViewListener;

    if-nez v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->listener:Lcom/heyzap/common/mraid/MRAIDViewListener;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v2, v1, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->width:I

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v3, v1, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->height:I

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v4, v1, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetX:I

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v5, v1, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetY:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/heyzap/common/mraid/MRAIDViewListener;->mraidViewResize(Lcom/heyzap/common/mraid/MRAIDView;IIII)Z

    move-result v0

    .line 619
    if-eqz v0, :cond_0

    .line 623
    const/4 v0, 0x3

    iput v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 625
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 626
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    .line 627
    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->removeAllViews()V

    .line 628
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 629
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V

    .line 630
    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 631
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->setCloseRegionPosition(Landroid/view/View;)V

    .line 634
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setResizedViewSize()V

    .line 635
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setResizedViewPosition()V

    .line 637
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$6;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$6;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private restoreOriginalOrientation()V
    .locals 3

    .prologue
    .line 1622
    const-string v0, "MRAIDView"

    const-string v1, "restoreOriginalOrientation"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1624
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1625
    iget v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->originalRequestedOrientation:I

    if-eq v1, v2, :cond_0

    .line 1626
    iget v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->originalRequestedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1628
    :cond_0
    return-void
.end method

.method private restoreOriginalScreenState()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 993
    iget-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isFullScreen:Z

    if-nez v1, :cond_0

    .line 994
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 996
    :cond_0
    iget-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isForceNotFullScreen:Z

    if-eqz v1, :cond_1

    .line 997
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 999
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isActionBarShowing:Z

    if-eqz v1, :cond_3

    .line 1000
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1001
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1005
    :cond_2
    :goto_0
    return-void

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->titleBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->titleBar:Landroid/view/View;

    iget v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->origTitleBarVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCloseRegionPosition(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 1058
    const/4 v0, 0x1

    const/high16 v1, 0x42480000    # 50.0f

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 1059
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1064
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->expandedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_1

    .line 1065
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1066
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1103
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-ne p1, v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch v0, :pswitch_data_0

    .line 1085
    :goto_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1089
    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1072
    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1077
    :pswitch_2
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1081
    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 1092
    :pswitch_4
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1097
    :pswitch_5
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1085
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private setCurrentPosition()V
    .locals 7

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1194
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1195
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1196
    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1197
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentPosition ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mraid.setCurrentPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method private setDefaultPosition()V
    .locals 7

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1203
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1204
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1205
    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1206
    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultPosition ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mraid.setDefaultPosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method private setMaxSize()V
    .locals 5

    .prologue
    .line 1211
    const-string v0, "MRAIDView"

    const-string v1, "setMaxSize"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v0, v0, Lcom/heyzap/common/mraid/MRAIDView$Size;->width:I

    .line 1213
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->maxSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v1, v1, Lcom/heyzap/common/mraid/MRAIDView$Size;->height:I

    .line 1214
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setMaxSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method private setOrientationProperties(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    const-string v0, "allowOrientationChange"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 648
    const-string v0, "forceOrientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 649
    const-string v2, "MRAIDView-JS callback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOrientationProperties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    iget-boolean v2, v2, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    iget v2, v2, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    invoke-static {v0}, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    iput-boolean v1, v2, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->allowOrientationChange:Z

    .line 655
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->orientationProperties:Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;

    invoke-static {v0}, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientationFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/heyzap/common/mraid/properties/MRAIDOrientationProperties;->forceOrientation:I

    .line 657
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 658
    :cond_1
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->applyOrientationProperties()V

    .line 661
    :cond_2
    return-void
.end method

.method private setResizeProperties(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 666
    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 667
    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 668
    const-string v0, "offsetY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 669
    const-string v0, "customClosePosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 670
    const-string v1, "allowOffscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 671
    const-string v6, "MRAIDView-JS callback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setResizeProperties "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v6, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iput v2, v6, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->width:I

    .line 676
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iput v3, v2, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->height:I

    .line 677
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iput v4, v2, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetX:I

    .line 678
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iput v5, v2, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetY:I

    .line 679
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    invoke-static {v0}, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->customClosePositionFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->customClosePosition:I

    .line 681
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iput-boolean v1, v0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->allowOffscreen:Z

    .line 682
    return-void
.end method

.method private setResizedViewPosition()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 831
    const-string v0, "MRAIDView"

    const-string v1, "setResizedViewPosition"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->width:I

    .line 837
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->height:I

    .line 838
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v2, v2, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetX:I

    .line 839
    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v3, v3, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->offsetY:I

    .line 840
    int-to-float v0, v0

    iget-object v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v4, v0

    .line 841
    int-to-float v0, v1

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    .line 842
    int-to-float v0, v2

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 843
    int-to-float v2, v3

    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 844
    iget-object v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    .line 845
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    .line 846
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 847
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 848
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 849
    iget-object v5, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 852
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 853
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 854
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 855
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setCurrentPosition()V

    goto :goto_0
.end method

.method private setResizedViewSize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 818
    const-string v0, "setResizeView"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 820
    const-string v0, "MRAIDView"

    const-string v1, "setResizedViewSize"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v0, v0, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->width:I

    .line 822
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizeProperties:Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;

    iget v1, v1, Lcom/heyzap/common/mraid/properties/MRAIDResizeProperties;->height:I

    .line 823
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResizedViewSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    int-to-float v0, v0

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 825
    int-to-float v1, v1

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 826
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 827
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->resizedView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    return-void
.end method

.method private setScreenSize()V
    .locals 5

    .prologue
    .line 1219
    const-string v0, "MRAIDView"

    const-string v1, "setScreenSize"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v0, v0, Lcom/heyzap/common/mraid/MRAIDView$Size;->width:I

    .line 1221
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->screenSize:Lcom/heyzap/common/mraid/MRAIDView$Size;

    iget v1, v1, Lcom/heyzap/common/mraid/MRAIDView$Size;->height:I

    .line 1222
    const-string v2, "MRAIDView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScreenSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraid.setScreenSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->px2dip(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method private setSupportedServices()V
    .locals 2

    .prologue
    .line 1227
    const-string v0, "MRAIDView"

    const-string v1, "setSupportedServices"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isCalendarSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isInlineVideoSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isStorePictureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureManager:Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;

    invoke-virtual {v1}, Lcom/heyzap/common/mraid/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method private setViewable(I)V
    .locals 2

    .prologue
    .line 1401
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 1402
    :goto_0
    iget-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isViewable:Z

    if-eq v0, v1, :cond_0

    .line 1403
    iput-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isViewable:Z

    .line 1404
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isLaidOut:Z

    if-eqz v0, :cond_0

    .line 1405
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireViewableChangeEvent()V

    .line 1408
    :cond_0
    return-void

    .line 1401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDefaultCloseButton()V
    .locals 5

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "iVBORw0KGgoAAAANSUhEUgAAAMIAAADCCAYAAAAb4R0xAAAai0lEQVR4Ae2deVhV17n/exgOcDgMoBQFUYqagAqKAw4KyCDKIMiADOCM4qA4DyJqjLPRqHEexCE2+TX99fa5T3t77216b9u0aXvbe9umQ2/TpmmbNE3ibRJjE3ubNva+32StZnmCCJyzOGfv/f7xeZ48Bs7Z+93fD3uttdde6xN+/v49pnruCkZA9bAJ/IlAwk4EESGEg3ASYUQ4EaEQKYhQCBc/6xS/GyI+yy4+219+H9e+56hZZhF6Fng/IkAEM5gIRYATByfHZeaVTJlWUlNbWN64vqRq/oHS2QsvlNU2fXZW3eKnKxqav1vZuPS5qjnLXqias/xF4iX6zP8B+G/8G/4ffgY/i9/B7+Iz8Fn4THw2vgPfJaQJFcdgJwJYEBZBd/ADReCcfWP7x2Tll2ZNL61bQgE9QoH9YmXjsp8i0L0JvhPfjWPAsWTmz8zEsYk7SbA4Zj8Wg0XwRPDDho3MSMovnl1TUjXvYHn9kq/QX+5XEERfBMeGY8Sx4phx7DgHFoNF6E747YQjPCo6emrBrOkUpv3l9c3P0M+8jpAZlNdxDjgXnBPOTfQ77BqkYBGMHv7+AxJj84ur60prFl2ndvqLCJEZwbnhHHGuOGeLSsEiCAECiBD8dcwrqp5NndEr1KT4NYJiJXDOdO5XUQNxpwiRHW4WoRsY9K9/2NhJOWloKlBn82cfhoJBLVAT1AY1MtFdgkVQxvWDgoJDovKKq2tn1TZ9sdM2P/M6aoRaoWaoHWpoQCFYBLX5Ez9ocL8ZZfUtNC7/n90LBIOaTS+ra0ENDdRsYhFUAZIeGJ5QVDHnIeoc/sK9QDCoIdVyJ2rqw0KwCKoACYlD4ugJbCu1eX/JIfYsqClqixqrQrAIPtQHiOwTEzNjVsM6ulg/59DqBTVGrVFzL/chWARlFCgip7Cyxjt9AO5DoPa4BnKUiUXo/WaQg4b6xpTVLPo8h9K74BrgWuCayOYSi6D7WYBoBhXOatxGD4R+x0H0DXAtcE1kc0nDMwgWQUgQSDgnTS3MoUll3+Tw+Sa4NrhGuFZEoIdkYBHUu0BRxdx99G+vceB8ntdwrdS7A4vggb7AmIk548rrlnyNA2YscM1w7XrYd2ARUDA5IjRtZs1yan/+loNlTHDt6BouU0aWbCxCN5pCsXEJcTOrF1w2RyAYzHKNH5g0QDaVWIT7PxxzpGdkpZfXcYfYhB3p74wenz0W11g+hGMROu4PhGUXlFXSk8sXTBsInrf0K1xjXGul38AiKEOjkdSWXEv/9qrpA8G8WjCzdh2uuRxitbQIslNsDw6OpuG2YxwQa1FcOfcxe1BwH9mJtqQIcq5QTGxcf+pIPcHBsCa49siAnKtkKRHkyFC/+EED6EXyL3AgrA0tYvZPNKI0UI4oWUIEKcGAxCGJ9ErglzkIgKGFyr76qaEpg6UMphZBSkBvOg2hE/86B8AFluEZZEMsRuZnShGkBHEDkwaxBMy9QDaQEXlnMJMI6tPiBGoPPt1ZIRgGGUFWpAymEEEOkdLitHHcMWa6CrKCzMihVUOLICWwBwXF0LyhJ7tTCIZBZpAdKYMhRVCeGEfTygfHe1IIhkF2kCH5BNpIIqhzhyJyi6pW0r/d6GkhGCa3sLIF0zHk3CQjieBPhE3JK5lN89F57pBbMMgQsoRMIVuGEEGMEDlGpE8Yx7NIGU+BLCFTyBYy5tMiiCZRUHTf2AQaD37Ww8Vg+BnDt/rGxslhVZsviqB2jvvQ8uLXdBSCYZAtylhfOZLkeyKIzjE6NjoLwTA0ALMGWUPmfEoE2S9IGzNpMr2B9JLOIjAMZexlZE32F3xCBNkvcDjD42k26TO9UQiGQdbCIqIGyP6CV0VQH5rR6siHe7MQDEOZO6I+bPOmCH6Ec+yk3Bn8rjHjBV6j7BUig8iit0QQTaIwDJV+2xuFYBhkDxmUTSRviBBARNPKE7u9WQiGoQzuQRaRyd4VQYwSpY6eMJmXZme8DWXwFXrqPIUyGYps9pYIcl3SWJomy+8XMD4BsohMKg/atIvgR4TTGvh1vlQIhpmYPaMe2URGdYugdpB5zzLG1zrO/6V2nHWKEEBE5RVVtXLhGV8E2URGkVVdItiIEJr990BFw9LnzVK4tocfeXfDtj1/5BCZA2QTGUVWCZvnRRDDpfnFs00zXLpt16F3r17/zN/AhlbryrBw+aY3t+48+I5Zzie/ZPZeOZzqWRHE3YCmgqeY5WWb1ocOvgMBJFce/8zf1ltQBkhwof36+6jBrn1Hb5vlJR5kVd4VPCmCfHh2wAyF2rpTlUCV4f/9bf3W3bcsJcHlDyWQ7D302J9mz1tp+HNDVuVdwTMiiLtBn0/2T6b21y+MXqAtOw8oEnQswzoLyLBohYsECgcfPf2/NfNXGfyusPQFZFbeFTwhgj/MyimsbDW8BDv2KxJ0LsPaLQ/fsqIEkiOPnXuvdkHLH4x8nsisuCv4uyeCeG4QaLcPpDHaH1hBAlWGNZt33TKfBJvfup8EkuOnLr5Xv2i1YWVAZpFd+VzBHRH8iMgpucVLjHzxN2/f90d5ca0sQ9PKrksgOXm2/S+Ni9e+YdRzpmVgmpFhZNkdEexEPM3jMOw+BpvaFAl6KMPqTQ/dsqIEktPnr/x1XvN6Q8pA2X0aGSbsPRXBRoQ9OGL0VKOuVLexba+QwD0uX/tAhreNLMHFy58WEvSMcxevvb9w+cY3DXj+N5JTx+Qgy4StJyIEEDG0++EJI158PC32hASqDC0bIYP1JJDgjtK0cstbRqsBMowsI9PdE0EMmYY4QgdXNDQbbjpFy8adb3tSAlWGVRt2GEYGCi0kuOPJGly68uk7S9dsu2mkPCDDoWHhg+VQatdFEJ3kSTlFTUa8G9QtXP0HjHjokmHleshgPQkkh46e+bPRMkGvDTTJTnN3RLATcbQP7ueM2i6uJxkeO33xL1aUYfEqbRLg+cKfaxesMtyQalHFnKeQacLeVRFsRCitXzqCFlJ6BR9ibBku6ZLhzor129/2SQmuaJRgPiQw5PyjlyKi+qSIRcFsXRHBj4imZwer5IcYXoYzumR48s6KddtvWkKC42cNK4Fkck7RcmQbGb+/COLZQVGFbBYZHzwdPXGmXYsM7T4iAyS4pEmCwyRBjcElAJTp/y+bR/cTwUY4gkMcD9Kt5DdmEQE0LFqjVYbla9tueleCJ1iC+4BMI9uyedSZCH5E1JiJObVmnGzW0LTmDyfP6pNhmReGFZe0bNUtgakygGzL0aPORAgk+tFc7pNmFAE0Nq194+TZy0aQgSXQALKNjCPrnYkQTAwqq1n0HfySmWU4de7yX7XIcPWJXnng1NzSqk2CR46dMaUEgLL9H5TxRGS9YxHE3KL4QYMz5Nwi88twRYsMlyDD6lZtMjSvZgnc4AYyjqyr/YSPDZtOyJ6+FL9gBTC9+PR5PTIgqAisBgluapPgqJDA/AuBLZPDqB2JEEj0pzbUWauIAObolqFlq8dkWKpRgkMWkQAg48i62k9w7R8kls5e+A0riQDmLFn3xhmNMqBT69sSnLaMBAAZd+0nqP0DJ83QG46Vha0mApgLGS5c1SYDjfX3WAZ0vtHvYAk8A2X8987wyBHIvOwn3PX8IG3spEo9X84yYOoDZPAxCeRqFZYDWUfmZT/hrpdwMvNKLL+m6Vx6JfGsJhkwIxTTo7sjQbsmCbBki1i/yJIg6/JlHVUEOxFPnYhLVhcBzIMMF69plGHzW12T4EmWQBPIunyXGQ7c1VEuqZr/byzCXTK87/kgilceV9xbhmUsgXaQddlhVkUIJR4or29WV7JjGZZuePOcRhmw0FaHElxjCXSDrCPzyL4UwUaE0+bN6R9/oszMhwyX9MmA9Uf/LsHaNn0SHDl1twTMDWQe2SdsUoRoWvJiJhenMxke1yND+4cyLNcowYEOJWCQeWRfiuBP9B2fOW05F+feLFi28c3zGmVgCXqfjCnTliH7xEdTr7MLyvZwcbwngx4JTrIEnYDMyynZcug0gXbCOc/F6cqeAiSD2FjDl9l/mCW4H8g8sk/YIUIQMWh6Wf1TXJzu7zJjXAkYZB7ZhwMQIYRIoheb/5mL495uM8aSgEHmkX04ABEcxNCZ1fO/ycVxf8MNb7LvkRPdkIBB5pF9OAARnERyWW3Tc1yc7tMkN97wvgTd3PuMQeaRfTgAEcKIlPL6Jc9zcTSsOO2zEjDIPLIPByBCODEcS+JxcfQsuqtfAq5/T0DmkX04ABEiiFS5zimjaclFDWArWJbALRFeQfbhgBQhjQujYdU5zRJwvd0H2ZciRLIIxll4Sw6Rcp09KkKkFGEkF8VzrNqw823soaBLBKy6MceXd7pkEZiWjXolUGVwf9tX7iO4ipBmnM4ySyA5dY5lcFOEl4UIH3WW3Rs+ZbD9rJCgV8Earo1NLENPqKhvftF11Ci1vG6JwV7TZAkkWN2bZejxA7URUoRwYjg9bv4RF6dHEtxSJfCeDO0kw5puyMBQ5n+sPlALI1Lorf5nuTjGlECVATsDde34GWRenWLhJJILyxu/zMXpOms27bp15XEhgQ+B7bFozziWoQsg8+qkOwcxtKC01tCbB7IEqgyXWIYugMyr07BDiKTcwsrLXJwuSLDZtyWQYH/p+oUsQ2cg8+qLOUHEoCl5JYe4OGaQQJXhIsvQCci8+qqmnUgYM3HqOi6OdyTA0uy6Ot3HT91LBgaZV1/eDyT6DU1Jq+HidMzaLQ9rk+ChfY/e/nB+0o63NcrwXt3CFhcZGGReXc7Fn+hLm4RM9saSjyyBOkVD34O5Y6cu3C0DcwOZVxf4shHRRDo9afslF+gj1umUYC8k6N2n1MdOXnivdgHLACjrLyDz6pKPNvl0mZa3eIaLpF+CnaoEHcug7buPsgwfgKzLp8qE7a5l4XOLqq6zBCTB1t36JNhz5La3O+dHT5y3vAzIulwW/mMbhUzImm759U/Xe0MCL8jwqMVlQNY72ijETsTTMtkLWAI9wdux58i7vtZZP/LYOZJhlSVlQNY72joqgIgJCXVm0gs6v7ekBK17/qhPgsPv+mhTDTL8uXY+ZLDW9rLIekebCfoRUcQompH3HZbAgxLshgS+fbc6cvyspfZaRsaR9Y62l7XJWag5MyquWUmCDR9IoGeKw3ZI4HFh9RzrYQvJgIwj6x/fcFzpMI8en72FJfA9CdRjxudrkeHYGUvIgIyrHWVXEQKJ/jH94gut8IR5w7a92gLV9vAj7+o9dn0yPHLU9DLcQMaRdWS+IxH8iGiCdhVc8H2WwDclkGxs03cOmARoVhmQbWRcZN2vIxFs8rXNqdPLr5hVgo0aJdi265B2CVQ2te3TKYMp91pAtuXrmSLzLiIo/YRhIzNWmlKCNpNIoMqwvTsy8Ablw0dlrFT7Bx2LIKZk24OCMysalr5kLgn2mU4CyZYd+9/RJ4N5tqdFppFtOfW6MxHk84S0gtI60+yptkmvBO/I7/FtGXivZsr0l5Bt+fygMxFshIMYMmZizk6WoHNaHzqoSOALMhzoRAbepHD0hOztyLbIuO2eIqjzjsIioqZhkVQjn/jm7daRQLJ150FtMuw7bNzNCisbl/7O4QzLpWzHEXb6t0/cTwQ5jJpOt5J/YQmMI4EEx8f7td3NtJk1aBaNksOmXRHBRoQSQ0dlZG4zpAQa28tbdx4QEvg26MDrOH88iV+6ZttNo2Vi1LjMVrVZ1BURgJ2ICwoOyaHFgV8w0glvYQn+Dj3c87gMmOJhNAkow7+iLE9Vm0VdFcFP7puQXTDrmrGaRHpE2KJKYFEZ8DDSkA/RCmY9LjcEQba7I4KNCCESExKHNGB+hpVftcRojJEHDTAB0G0J2owpAbKLDCPLItO2LougvqxDZBRVzPmGQXevueO+BPuFBMZmx56ey4AhaKOeN2X3WWRYvoQDAborgpx7lEzTVg35TGH52rab7VefuGNtCVQZjtzubg02bzd2DZBdZFjOLeq2COozhUC7PZs2VXjeiIVobmnt0Y74m4UEZgPrKVnlDwEyi+wiw7KT3FMRZKc5ddLUwhNGLciiFZvfOt9+/X1j/BXUD1bYs8LdkDJ7EtmVnWR3RLARwcTA0LCIwoqG5t8YtSgLlm148+zFa3+9vwSiPWxydu07elv/MLH3oKz+FplFdkWGbe6IAALkk+bMvJJLRi7O3CXr3sD+xBo6hcaUYf/HZcAUDZMs+d4ul3SUnWS3RFCHUmn+UUlFvXHvCgAb7mFHGatLIHl4/7HbrlNHjA4yGh4ZXaIOmbotgutdYXJO0QWjF6qO9gvAgrgyABuFBFZl94Fjf5LvVJgBZNT1buAREdS7ArW7iuiR9YtGLxZWeMOqDfJBEWMOkE1kVL0beFIE9a4wanxWwQkuOuOja5qeQEbVu4GnRZB3hYGBQUF5pbMX/oQLz/gSpTULf0LZzEdG5d1AhwjyrhBFpNJL0D41RZthho8avw3ZREbl3UCXCDYiiIgnMmeU1X/dFwrAMMgiZTJLZDOIsOkUAfgR4UTKgEGDF1Y2enf1bIZBBpFFZBLZlE+RdYtgI+xELJExKaeo3ZtFYBhkEFkUmbQTNt0iqHeFUCKJOicFM6vnP+eNAjAMsocMIovIpLwb9JYI6nBq6uAHU1fT5guv9WYBGIYy9zqyhwyqw6W9LYLsOMcREzPzZ366N4vAMFn5pU8ge8ig7CB7QwTgRziJwXR7mlFSNa9XVtFmGGTNHhxciOwRTtkk8pYINiJQNpGo576YFlLSuigYw2DhOWRNaRIhgzZviYAPU5tI/YjxtFTkUZ1FYJixk3KOI2vInNok8qoIQDSRHEQikZNXXP0lHQVgGGQLGRNZc8gmkU+IAMQoUgSRHOJwltLOhT/0ZAEYhjL1HLKFjCFrcpTI10SQD9r6EiP7xQ9qohckfuuJAjAMstR/QGITsoWMyQdnviZCR/2FcSlpY3e4+3yBYZChYSPH7RRPj/ur/QKfFMGlv5BATKHOM7+7wLjbOcY7BpnIlNov8GkRxBf4E2HisXdO1rTSz/akAAyD7FCGckWWwpAtZMwoIthE5zmSeNA/IGDGtJKar3SnAAyDzCA7yJDIEjJlM4oIwPVh27DgEEdZ4azGb3WlAAxDWfk2MoPsuD40M5QIHYwkpYaGhVcXV87tdBoGwyAjyAqWcncdITKiCK4yfJIYFRHVp47mifygowIwDLKBjCAryIwqgZFFUEeSgohYIp1OtJ7vDEwHEvwQ2UBGRFaC5AiRGURQZQgWzxjSneGRtYXljd/jAEi4OUSr0+FOMFpkJFhKYCoRVBnknSEk1FlFL10/y0GwNjNmNXyb+gQ1yISrBKYUoYNm0kgaGajIL5n97xwIS4JtX7+KDIg+QawqgZlFcJUhhkilseKS7Gll/8DBsBa45rj2YnTok2qfwAoiqDLIodVhxPRxk/PO4z1UDom5wTWma30B1xzXXg6RSgmsJILr0Go0kUzkpaSO3V1e3/wSB8a0s0hfxjXGtRbXPFodIrWiCK5PoCOJwURmbPzAFZh7zsEx29IrC34al/CpVWJFusFEpPrE2MoiuM5NCiMSiAwaUarJLar6Vw6QOcgrqn6aRoZqcW2JgUSYy9whFkGRwZ9wEP2JkUQRbQ96mhcEMC64driGdC2LxchQnLjG/lICFqHzEaW+og2Z0z8hcTU9cDHYtAwG1wzXDtdQXMu+riNDLELXOtERRCIx3h4UVEUbxD3Fo0rGGBWaklv8FK4Zrp24hhFqp5hF6H6/wSGeNqYSBYlDUlqpI/0jDpxvgmuDa4RrRaSKa+dQ+wMsgntNpWgx0jCR/tJU0xZBj/OS9L4DrgVdk+u4NrhG4lpFuzaFWATPDLE6RWcrlcin9ueagtLab3AQvQuuAa4FrgmRKq6RUx0aZRE8K4N6d0gSQ3EzHxyevpfGqH/W6yHg5wL/jdrjGohrkaTeBaQELILevkMoEStGIzLpllxDj+3bZ9Ut1rwhOoMao9aoOWovrkEsEaqzL8AidD5XKZyIF7fkXHoQN2d85rTrnp+mwaCmqC1qjFoTqaL24a5zhVgE7zWXooiB4qFNvjM8Yt7E7BlPlru92h6DGqKWqKnoB4wStY5yvxnEIuhoLoWINmoikU7khzhCG2mBqEu0L/TzHOrugZqhdqihEAA1TRQ1DtHQDGIRNAoxisgNCAycTXtDH6G3ob5LP3vjngFgbqBGtGfxEdQMtRM11C4Ai6BfiATRns0iyvrFD1wzObf4c9Tp+zUHnyBQC9QEtUGNRK1SUTsjCsAidCxEEBEpOnbJYqhveqDdXjtsZMbh/OLqr2EXFis+BMO5owaoBWoiaoMaxYuaBRlZABah4061nQgjYsStPo3IIkoczrD5qaMnnkAwKhqaXzZr+HFuOEecK84Z5y5qkCZqEiNqZPfRTjCLoKHZFEnEEUNFRzAbwaC/jg20beluNBWKK+f92OB9ihs4B5wLzgnnJsKfLc55qKhBpAGaPyyC5rtEKBEtmgNDiDRismgqVEZE911KzYdHaQvdfyyqmPN9alK86sPNnVdxjDhWHDOOHecgzgXnlCbOMV6cc6iOv/4sgvGlcIjx8X6iqZBCjBHNhxlEBW1rOpdmWLalZ2SdpcB9gdZm+p43Ot74Tnw3jgHHgmPCseEYxbFmiWNPEefST5ybQ0/4WQQzShFIBIv2cjQRJ8KULIYTJxA5RCFRTtTSq4iLByY90DYiffyxjCn5V+n9ic/nFFY+TWv3PIu/0jQ35+dltU2/pHb674A6exb/Lf8dP4Ofxe/gd/EZ+Cx8Jj4b34HvwneK7y4UxzJBHFuyONY4cexh4lwC9YefRbCKGE4iSnQq40XgHiCGE6OJ8UQWkSuaIyViOLKCqBbhrSMaiEZijqBR/FsdUSt+tkL8bon4rFzx2ePFdw0X350ojiVGHJuTg88i9JYYAYRdkSOCiBZh7C/G3wcRSaJDmkykiPCOIFKJNBdSxf8bLn42WfxukvisBPHZMeK7IpTQ24kA/cFnETqHkYL4E4GKJCGEQwQ2jAhHgBUiBREK4eJnneJ3Q5SwBxL+MvBcd8/wf1k3W3xz3/VaAAAAAElFTkSuQmCC)"

    invoke-static {v0, v1}, Lcom/heyzap/internal/Assets;->getDrawableFromBase64(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1041
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1042
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, -0x10100a7

    aput v4, v2, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1044
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->closeRegion:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1047
    :cond_0
    return-void
.end method

.method private storePicture(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 687
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    const-string v1, "MRAIDView-JS callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storePicture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureListener:Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    invoke-interface {v1, v2, v0}, Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureStorePicture(Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private useCustomClose(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 699
    const-string v0, "MRAIDView-JS callback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "useCustomClose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 701
    iget-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->useCustomClose:Z

    if-eq v1, v0, :cond_0

    .line 702
    iput-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->useCustomClose:Z

    .line 703
    if-eqz v0, :cond_1

    .line 704
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->removeDefaultCloseButton()V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->showDefaultCloseButton()V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 276
    if-eqz p2, :cond_2

    .line 277
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 278
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v2}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 279
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    invoke-virtual {p0, p1, v0}, Lcom/heyzap/common/mraid/MRAIDView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/heyzap/common/mraid/MRAIDView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v0

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v0

    goto :goto_1

    .line 282
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_2
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 389
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 390
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 397
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 398
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 399
    iput-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    .line 401
    :cond_0
    return-void
.end method

.method public getNativeFeatureProvider()Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->nativeFeatureProvider:Lcom/heyzap/common/mraid/nativefeature/MRAIDNativeFeatureProvider;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    return v0
.end method

.method public load()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 216
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to be on the main thread to load MRAIDView."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/heyzap/common/mraid/MRAIDView$1;

    invoke-direct {v2, p0}, Lcom/heyzap/common/mraid/MRAIDView$1;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;

    invoke-direct {v0, p0, v5}, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;-><init>(Lcom/heyzap/common/mraid/MRAIDView;Lcom/heyzap/common/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidWebChromeClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebChromeClient;

    .line 232
    new-instance v0, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {v0, p0, v5}, Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;-><init>(Lcom/heyzap/common/mraid/MRAIDView;Lcom/heyzap/common/mraid/MRAIDView$1;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->mraidWebViewClient:Lcom/heyzap/common/mraid/MRAIDView$MRAIDWebViewClient;

    .line 234
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    .line 236
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;

    .line 238
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 244
    :goto_0
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->injectMraidJs(Landroid/webkit/WebView;)V

    .line 256
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDHtmlProcessor;->processRawHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->data:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->data:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->verbose:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v0, v1, :cond_7

    .line 260
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-direct {p0, v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 272
    :cond_1
    :goto_2
    return-void

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v1}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v2}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/heyzap/internal/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 249
    iget-object v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/heyzap/common/mraid/MRAIDView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getWidth()I

    move-result v0

    goto :goto_3

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->bannerAdSize:Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;->getHeight()I

    move-result v0

    goto :goto_4

    .line 251
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No Banner Size available!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_7
    invoke-static {}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->debug:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v0, v1, :cond_8

    .line 262
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "mraid.logLevel = mraid.LogLevelEnum.DEBUG;"

    invoke-direct {p0, v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 263
    :cond_8
    invoke-static {}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->info:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v0, v1, :cond_9

    .line 264
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "mraid.logLevel = mraid.LogLevelEnum.INFO;"

    invoke-direct {p0, v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 265
    :cond_9
    invoke-static {}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->warning:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v0, v1, :cond_a

    .line 266
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "mraid.logLevel = mraid.LogLevelEnum.WARNING;"

    invoke-direct {p0, v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 267
    :cond_a
    invoke-static {}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->error:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v0, v1, :cond_b

    .line 268
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "mraid.logLevel = mraid.LogLevelEnum.ERROR;"

    invoke-direct {p0, v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 269
    :cond_b
    invoke-static {}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->getLoggingLevel()Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;->none:Lcom/heyzap/common/mraid/internal/MRAIDLog$LOG_LEVEL;

    if-ne v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->webView:Landroid/webkit/WebView;

    const-string v1, "mraid.logLevel = mraid.LogLevelEnum.NONE;"

    invoke-direct {p0, v0, v1}, Lcom/heyzap/common/mraid/MRAIDView;->injectJavaScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1374
    const-string v0, "MRAIDView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1376
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 485
    iget v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 486
    :cond_1
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 488
    :cond_2
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->close()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 1367
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1368
    const-string v1, "MRAIDView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1370
    return-void

    .line 1368
    :cond_0
    const-string v0, "landscape"

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1380
    const-string v0, "MRAIDView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1382
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1413
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 1414
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isForcingFullScreen:Z

    if-eqz v0, :cond_1

    .line 1417
    const-string v0, "MRAIDView"

    const-string v1, "onLayout ignored"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-ne v0, v5, :cond_3

    .line 1421
    :cond_2
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->calculateScreenSize()V

    .line 1422
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->calculateMaxSize()V

    .line 1424
    :cond_3
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isClosing:Z

    if-eqz v0, :cond_5

    .line 1425
    iput-boolean v3, p0, Lcom/heyzap/common/mraid/MRAIDView;->isClosing:Z

    .line 1426
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/heyzap/common/mraid/MRAIDView;->defaultPosition:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->currentPosition:Landroid/graphics/Rect;

    .line 1427
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->setCurrentPosition()V

    .line 1431
    :goto_1
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-ne v0, v5, :cond_4

    if-eqz p1, :cond_4

    .line 1432
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/heyzap/common/mraid/MRAIDView$14;

    invoke-direct {v1, p0}, Lcom/heyzap/common/mraid/MRAIDView$14;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1439
    :cond_4
    iput-boolean v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->isLaidOut:Z

    .line 1440
    iget v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isPageFinished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isInterstitial:Z

    if-nez v0, :cond_0

    .line 1441
    iput v4, p0, Lcom/heyzap/common/mraid/MRAIDView;->state:I

    .line 1442
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireStateChangeEvent()V

    .line 1443
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireReadyEvent()V

    .line 1444
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->isViewable:Z

    if-eqz v0, :cond_0

    .line 1445
    invoke-direct {p0}, Lcom/heyzap/common/mraid/MRAIDView;->fireViewableChangeEvent()V

    goto :goto_0

    .line 1429
    :cond_5
    invoke-direct {p0, v3}, Lcom/heyzap/common/mraid/MRAIDView;->calculatePosition(Z)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 383
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 1386
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1387
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/heyzap/common/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    invoke-direct {p0, p2}, Lcom/heyzap/common/mraid/MRAIDView;->setViewable(I)V

    .line 1389
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 1393
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 1394
    invoke-virtual {p0}, Lcom/heyzap/common/mraid/MRAIDView;->getVisibility()I

    move-result v0

    .line 1395
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/heyzap/common/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->setViewable(I)V

    .line 1398
    return-void
.end method

.method protected showAsInterstitial()V
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/heyzap/common/mraid/MRAIDView;->expand(Ljava/lang/String;)V

    .line 790
    return-void
.end method
