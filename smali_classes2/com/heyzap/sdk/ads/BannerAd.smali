.class public final Lcom/heyzap/sdk/ads/BannerAd;
.super Ljava/lang/Object;
.source "BannerAd.java"


# static fields
.field private static instance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/heyzap/sdk/ads/BannerAd;",
            ">;"
        }
    .end annotation
.end field

.field private static instanceListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;


# instance fields
.field private bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

.field private bannerPosition:I

.field private bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

.field private final isShowing:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/ads/BannerAd;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/sdk/ads/BannerAd;->instanceListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->isShowing:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    new-instance v0, Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-direct {v0, p1, p2}, Lcom/heyzap/sdk/ads/BannerAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    .line 29
    iput-object p2, p0, Lcom/heyzap/sdk/ads/BannerAd;->tag:Ljava/lang/String;

    .line 30
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    .line 31
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/BannerAdView;->setBannerOptions(Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    .line 32
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/BannerAdView;->setLoadOnAttachedToWindow(Ljava/lang/Boolean;)V

    .line 34
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    new-instance v1, Lcom/heyzap/sdk/ads/BannerAd$1;

    invoke-direct {v1, p0}, Lcom/heyzap/sdk/ads/BannerAd$1;-><init>(Lcom/heyzap/sdk/ads/BannerAd;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/BannerAdView;->setBannerListener(Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;)V

    .line 60
    return-void

    .line 30
    :cond_0
    new-instance p3, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-direct {p3}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/heyzap/sdk/ads/BannerAd;->instanceListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/heyzap/sdk/ads/BannerAd;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/BannerAd;->clearBannerViewParent()V

    return-void
.end method

.method static synthetic access$200(Lcom/heyzap/sdk/ads/BannerAd;)Lcom/heyzap/sdk/ads/BannerAdView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/ads/BannerAd;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->isShowing:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/heyzap/sdk/ads/BannerAd;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerPosition:I

    return v0
.end method

.method private clearBannerViewParent()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->isShowing:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 4

    .prologue
    .line 146
    const-class v1, Lcom/heyzap/sdk/ads/BannerAd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/heyzap/sdk/ads/BannerAd;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/BannerAd;

    .line 148
    if-eqz v0, :cond_0

    sget-object v2, Lcom/heyzap/sdk/ads/BannerAd;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/heyzap/sdk/ads/BannerAd;->internalHide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit v1

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized display(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 93
    const-class v1, Lcom/heyzap/sdk/ads/BannerAd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    new-instance v2, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-direct {v2}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;-><init>()V

    invoke-static {p0, p1, v0, v2}, Lcom/heyzap/sdk/ads/BannerAd;->display(Landroid/app/Activity;ILjava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized display(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    const-class v1, Lcom/heyzap/sdk/ads/BannerAd;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/sdk/ads/BannerAd;->display(Landroid/app/Activity;ILjava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v1

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized display(Landroid/app/Activity;ILjava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
    .locals 3

    .prologue
    .line 102
    const-class v1, Lcom/heyzap/sdk/ads/BannerAd;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p3, p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->setPosition(I)V

    .line 104
    sget-object v0, Lcom/heyzap/sdk/ads/BannerAd;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/BannerAd;

    .line 105
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/heyzap/sdk/ads/BannerAd;->bannerOptions:Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    invoke-virtual {v2, p3}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/heyzap/sdk/ads/BannerAd;->tag:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    .line 110
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/heyzap/sdk/ads/BannerAd;->internalHide(Z)V

    .line 112
    :cond_1
    const-string v0, "Creating new banner ad"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/heyzap/sdk/ads/BannerAd;

    invoke-direct {v0, p0, p2, p3}, Lcom/heyzap/sdk/ads/BannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    .line 114
    sget-object v2, Lcom/heyzap/sdk/ads/BannerAd;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 116
    :cond_2
    invoke-static {}, Lcom/heyzap/mediation/MediationManager;->getInstance()Lcom/heyzap/mediation/MediationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/mediation/MediationManager;->adsTimedOut()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    const-string v0, "Ads disabled because of an IAP"

    invoke-static {v0}, Lcom/heyzap/internal/DevLogger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit v1

    return-void

    .line 120
    :cond_3
    :try_start_1
    invoke-direct {v0, p0, p1}, Lcom/heyzap/sdk/ads/BannerAd;->show(Landroid/app/Activity;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCurrentBannerAdView()Lcom/heyzap/sdk/ads/BannerAdView;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/heyzap/sdk/ads/BannerAd;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/BannerAd;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    iget-object v0, v0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized hide()V
    .locals 3

    .prologue
    .line 138
    const-class v1, Lcom/heyzap/sdk/ads/BannerAd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/heyzap/sdk/ads/BannerAd;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/ads/BannerAd;

    .line 140
    if-eqz v0, :cond_0

    .line 141
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/heyzap/sdk/ads/BannerAd;->internalHide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    monitor-exit v1

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private internalHide(Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 65
    new-instance v1, Lcom/heyzap/sdk/ads/BannerAd$2;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/ads/BannerAd$2;-><init>(Lcom/heyzap/sdk/ads/BannerAd;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public static setBannerListener(Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;)V
    .locals 0

    .prologue
    .line 154
    sput-object p0, Lcom/heyzap/sdk/ads/BannerAd;->instanceListener:Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    .line 155
    return-void
.end method

.method private show(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 78
    iput p2, p0, Lcom/heyzap/sdk/ads/BannerAd;->bannerPosition:I

    .line 79
    new-instance v0, Lcom/heyzap/sdk/ads/BannerAd$3;

    invoke-direct {v0, p0, p1}, Lcom/heyzap/sdk/ads/BannerAd$3;-><init>(Lcom/heyzap/sdk/ads/BannerAd;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
