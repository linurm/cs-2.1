.class Lcom/heyzap/sdk/ads/BannerAdView$1;
.super Ljava/lang/Object;
.source "BannerAdView.java"

# interfaces
.implements Lcom/heyzap/common/banner/BannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/BannerAdView;->load(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/ads/BannerAdView;

.field final synthetic val$bannerView:Lcom/heyzap/sdk/ads/BannerAdView;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/BannerAdView;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView$1;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/BannerAdView$1;->val$bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/heyzap/common/banner/BannerWrapper;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$400(Lcom/heyzap/sdk/ads/BannerAdView;)V

    .line 148
    return-void
.end method

.method public onAdLoaded(Lcom/heyzap/common/banner/BannerWrapper;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$300(Lcom/heyzap/sdk/ads/BannerAdView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/heyzap/sdk/ads/BannerAdView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/sdk/ads/BannerAdView$1$1;-><init>(Lcom/heyzap/sdk/ads/BannerAdView$1;Lcom/heyzap/common/banner/BannerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public onError(Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0, p1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$000(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V

    .line 110
    return-void
.end method
