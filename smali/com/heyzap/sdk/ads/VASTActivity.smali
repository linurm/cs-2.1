.class public Lcom/heyzap/sdk/ads/VASTActivity;
.super Landroid/app/Activity;
.source "VASTActivity.java"

# interfaces
.implements Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;


# instance fields
.field protected backgroundView:Landroid/widget/FrameLayout;

.field private completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field model:Lcom/heyzap/common/vast/model/VASTModel;

.field private trackedQuartile:Ljava/lang/Integer;

.field private trackingEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/heyzap/common/vast/model/TrackingEvent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected videoView:Lcom/heyzap/common/video/view/FullscreenVideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private dismiss(Lcom/heyzap/common/vast/model/TrackingEvent;)V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    invoke-interface {v0}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastComplete()V

    .line 157
    :goto_0
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    invoke-interface {v0}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastDismiss()V

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 162
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->finish()V

    .line 163
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    invoke-interface {v0}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastIncomplete()V

    goto :goto_0
.end method

.method private fireUrls(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    new-instance v2, Lcom/heyzap/http/RequestParams;

    invoke-direct {v2}, Lcom/heyzap/http/RequestParams;-><init>()V

    new-instance v3, Lcom/heyzap/sdk/ads/VASTActivity$1;

    invoke-direct {v3, p0}, Lcom/heyzap/sdk/ads/VASTActivity$1;-><init>(Lcom/heyzap/sdk/ads/VASTActivity;)V

    invoke-static {p0, v0, v2, v3}, Lcom/heyzap/common/net/APIClient;->simpleGet(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)Lcom/heyzap/http/RequestHandle;

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method private processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTModel;->getTrackingUrls()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->fireUrls(Ljava/util/List;)V

    .line 108
    return-void
.end method


# virtual methods
.method public click()V
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    invoke-interface {v0}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastClick()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTModel;->getVideoClicks()Lcom/heyzap/common/vast/model/VideoClicks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/heyzap/common/vast/model/VASTModel;->getVideoClicks()Lcom/heyzap/common/vast/model/VideoClicks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/common/vast/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-direct {p0, v1}, Lcom/heyzap/sdk/ads/VASTActivity;->fireUrls(Ljava/util/List;)V

    .line 176
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/heyzap/sdk/ads/VASTActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clickUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public completed()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->complete:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->dismiss(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 147
    return-void
.end method

.method public error()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastError(I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTModel;->getErrorUrl()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->fireUrls(Ljava/util/List;)V

    .line 194
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->finish()V

    .line 195
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 97
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->backgroundView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->backgroundView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->closeLinear:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 140
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->close:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->dismiss(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 141
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 78
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->hide()V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 51
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 52
    invoke-static {}, Lcom/heyzap/internal/Utils;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 53
    const/4 v0, 0x6

    invoke-super {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 72
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 66
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    const-string v1, "com.heyzap.vast.VASTModel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/vast/model/VASTModel;

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    .line 68
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTModel;->getTrackingUrls()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackingEventMap:Ljava/util/HashMap;

    .line 70
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->prepare()V

    .line 71
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPrepared()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 82
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->backgroundView:Landroid/widget/FrameLayout;

    .line 83
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->backgroundView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTModel;->isFileCached()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTModel;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->allowStreamingFallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-virtual {v0}, Lcom/heyzap/common/vast/model/VASTModel;->getVideoDisplayOptions()Lcom/heyzap/common/video/VideoDisplayOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/heyzap/common/video/VideoDisplayOptions;->forceStreaming:Z

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Lcom/heyzap/common/video/view/FullscreenVideoView;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/VASTActivity;->model:Lcom/heyzap/common/vast/model/VASTModel;

    invoke-direct {v0, p0, v1, p0}, Lcom/heyzap/common/video/view/FullscreenVideoView;-><init>(Landroid/content/Context;Lcom/heyzap/common/video/VideoModelInterface;Lcom/heyzap/house/abstr/AbstractActivity$AdActionListener;)V

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->videoView:Lcom/heyzap/common/video/view/FullscreenVideoView;

    .line 90
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->backgroundView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/VASTActivity;->videoView:Lcom/heyzap/common/video/view/FullscreenVideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/heyzap/sdk/ads/VASTActivity;->onPrepared()Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method public progress(IF)V
    .locals 4

    .prologue
    .line 204
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 206
    iget-object v1, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x19

    if-lt v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 208
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->start:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 210
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/heyzap/common/vast/VASTInterstitial;->listener:Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;

    invoke-interface {v0}, Lcom/heyzap/common/vast/VASTInterstitial$VASTPlayerListener;->vastStart()V

    .line 222
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    .line 224
    :cond_1
    return-void

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 215
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->firstQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 217
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->midpoint:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    goto :goto_0

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/heyzap/sdk/ads/VASTActivity;->trackedQuartile:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 219
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->thirdQuartile:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    goto :goto_0
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->rewind:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 200
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->resume:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->processEvent(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 229
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public skip(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/heyzap/common/vast/model/TrackingEvent;->skip:Lcom/heyzap/common/vast/model/TrackingEvent;

    invoke-direct {p0, v0}, Lcom/heyzap/sdk/ads/VASTActivity;->dismiss(Lcom/heyzap/common/vast/model/TrackingEvent;)V

    .line 135
    return-void
.end method
