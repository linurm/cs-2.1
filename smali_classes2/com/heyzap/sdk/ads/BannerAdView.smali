.class public final Lcom/heyzap/sdk/ads/BannerAdView;
.super Landroid/widget/FrameLayout;
.source "BannerAdView.java"


# static fields
.field private static final XML_ATTRIBUTE_LOAD_AD_ON_CREATE:Ljava/lang/String; = "loadAdOnCreate"

.field private static final XML_ATTRIBUTE_ON_CLICK:Ljava/lang/String; = "onClick"

.field private static final XML_ATTRIBUTE_ON_ERROR:Ljava/lang/String; = "onError"

.field private static final XML_ATTRIBUTE_ON_LOAD:Ljava/lang/String; = "onLoad"

.field private static final XML_ATTRIBUTE_TAG:Ljava/lang/String; = "tag"


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityOnClickedMethod:Ljava/lang/String;

.field private activityOnErrorMethod:Ljava/lang/String;

.field private activityOnLoadedMethod:Ljava/lang/String;

.field private adTag:Ljava/lang/String;

.field private bannerListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

.field private bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

.field private bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

.field private loadAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private loadOnAttached:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/heyzap/sdk/ads/BannerAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    .line 39
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 40
    iput-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    .line 43
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->loadOnAttached:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->loadAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    iput-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnLoadedMethod:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnErrorMethod:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnClickedMethod:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    .line 39
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 40
    iput-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->loadOnAttached:Ljava/lang/Boolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->loadAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    iput-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnLoadedMethod:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnErrorMethod:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnClickedMethod:Ljava/lang/String;

    .line 68
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activity:Landroid/app/Activity;

    .line 70
    const-string v0, "onLoad"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnLoadedMethod:Ljava/lang/String;

    .line 71
    const-string v0, "onError"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnErrorMethod:Ljava/lang/String;

    .line 72
    const-string v0, "onClick"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnClickedMethod:Ljava/lang/String;

    .line 74
    const-string v0, "loadAdOnCreate"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "tag"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->loadOnAttached:Ljava/lang/Boolean;

    .line 79
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/heyzap/sdk/ads/BannerAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/BannerAdView;->onErrorHandler(Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V

    return-void
.end method

.method static synthetic access$102(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/common/banner/BannerWrapper;)Lcom/heyzap/common/banner/BannerWrapper;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/BannerAdView;->onLoadedHandler()V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/BannerAdView;->onClickedHandler()V

    return-void
.end method

.method static synthetic access$500(Lcom/heyzap/sdk/ads/BannerAdView;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/heyzap/sdk/ads/BannerAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnClickedMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/heyzap/sdk/ads/BannerAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnLoadedMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/heyzap/sdk/ads/BannerAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activityOnErrorMethod:Ljava/lang/String;

    return-object v0
.end method

.method private onClickedHandler()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/heyzap/sdk/ads/BannerAdView$2;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/BannerAdView$2;-><init>(Lcom/heyzap/sdk/ads/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method private onErrorHandler(Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/heyzap/sdk/ads/BannerAdView$4;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/ads/BannerAdView$4;-><init>(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method private onLoadedHandler()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/heyzap/sdk/ads/BannerAdView$3;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/BannerAdView$3;-><init>(Lcom/heyzap/sdk/ads/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    if-eqz v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    invoke-interface {v0}, Lcom/heyzap/common/banner/BannerWrapper;->destroyBanner()Z

    move-result v0

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    .line 164
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/heyzap/sdk/ads/BannerAdView;->setVisibility(I)V

    .line 165
    return v0
.end method

.method public getAdTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerOptions()Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    return-object v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/BannerAdView;->load(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->loadAttempted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/heyzap/mediation/request/MediationRequest;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->BANNER:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v3, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/heyzap/sdk/ads/BannerAdView;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v3, v4}, Lcom/heyzap/mediation/request/MediationRequest;-><init>(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/String;Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/BannerAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/BannerAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 95
    new-instance v3, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v2}, Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;-><init>(II)V

    .line 96
    iget-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-virtual {v2, v3}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->setContainerViewSize(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-virtual {v1, v2}, Lcom/heyzap/mediation/request/MediationRequest;->setBannerOptions(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/MediationManager;->display(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/mediation/request/MediationRequest;

    .line 105
    new-instance v0, Lcom/heyzap/sdk/ads/BannerAdView$1;

    invoke-direct {v0, p0, p0}, Lcom/heyzap/sdk/ads/BannerAdView$1;-><init>(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/BannerAdView;)V

    invoke-virtual {v1, v0}, Lcom/heyzap/mediation/request/MediationRequest;->addInternalBannerListener(Lcom/heyzap/common/banner/BannerListener;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 267
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/BannerAdView;->load(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public setAdTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->adTag:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setBannerListener(Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    .line 154
    return-void
.end method

.method protected setBannerOptions(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 280
    return-void
.end method

.method protected setLoadOnAttachedToWindow(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView;->loadOnAttached:Ljava/lang/Boolean;

    .line 272
    return-void
.end method
