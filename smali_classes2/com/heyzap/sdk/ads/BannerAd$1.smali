.class Lcom/heyzap/sdk/ads/BannerAd$1;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/BannerAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/BannerAd;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/BannerAd;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAd$1;->this$0:Lcom/heyzap/sdk/ads/BannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->access$000()Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->access$000()Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;->onAdClicked(Lcom/heyzap/sdk/ads/BannerAdView;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onAdError(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->access$000()Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->access$000()Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;->onAdError(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->access$000()Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/heyzap/sdk/ads/BannerAd;->access$000()Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerListener;->onAdLoaded(Lcom/heyzap/sdk/ads/BannerAdView;)V

    .line 48
    :cond_0
    return-void
.end method
