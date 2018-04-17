.class public Lcom/heyzap/common/mraid/MRAIDInterstitial;
.super Ljava/lang/Object;
.source "MRAIDInterstitial.java"

# interfaces
.implements Lcom/heyzap/common/mraid/MRAIDViewListener;
.implements Lcom/heyzap/exchange/ExchangeInterstitialInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDInterstitial"


# instance fields
.field private isReady:Z

.field private listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

.field private mraidView:Lcom/heyzap/common/mraid/MRAIDView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/heyzap/common/mraid/MRAIDInterstitialListener;Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;)V
    .locals 9

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p5, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

    .line 29
    new-instance v0, Lcom/heyzap/common/mraid/MRAIDView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/heyzap/common/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/heyzap/common/mraid/MRAIDViewListener;Lcom/heyzap/common/mraid/MRAIDNativeFeatureListener;ZLcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V

    iput-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->mraidView:Lcom/heyzap/common/mraid/MRAIDView;

    .line 30
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->mraidView:Lcom/heyzap/common/mraid/MRAIDView;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->mraidView:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/MRAIDView;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->isReady:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->mraidView:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/MRAIDView;->load()V

    .line 46
    :cond_0
    return-void
.end method

.method public mraidViewClose(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 2

    .prologue
    .line 67
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewClose"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->isReady:Z

    .line 70
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/heyzap/common/mraid/MRAIDInterstitialListener;->mraidInterstitialHide(Lcom/heyzap/common/mraid/MRAIDInterstitial;)V

    .line 73
    :cond_0
    return-void
.end method

.method public mraidViewExpand(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 2

    .prologue
    .line 59
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewExpand"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/heyzap/common/mraid/MRAIDInterstitialListener;->mraidInterstitialShow(Lcom/heyzap/common/mraid/MRAIDInterstitial;)V

    .line 63
    :cond_0
    return-void
.end method

.method public mraidViewLoaded(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 2

    .prologue
    .line 50
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewLoaded"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->isReady:Z

    .line 52
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->listener:Lcom/heyzap/common/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/heyzap/common/mraid/MRAIDInterstitialListener;->mraidInterstitialLoaded(Lcom/heyzap/common/mraid/MRAIDInterstitial;)V

    .line 55
    :cond_0
    return-void
.end method

.method public mraidViewResize(Lcom/heyzap/common/mraid/MRAIDView;IIII)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public show(Landroid/app/Activity;Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->isReady:Z

    if-nez v0, :cond_0

    .line 35
    const-string v0, "MRAIDInterstitial"

    const-string v1, "interstitial is not ready to show"

    invoke-static {v0, v1}, Lcom/heyzap/common/mraid/internal/MRAIDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDInterstitial;->mraidView:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-virtual {v0}, Lcom/heyzap/common/mraid/MRAIDView;->showAsInterstitial()V

    goto :goto_0
.end method
