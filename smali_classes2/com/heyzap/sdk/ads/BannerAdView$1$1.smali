.class Lcom/heyzap/sdk/ads/BannerAdView$1$1;
.super Ljava/lang/Object;
.source "BannerAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/ads/BannerAdView$1;->onAdLoaded(Lcom/heyzap/common/banner/BannerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/sdk/ads/BannerAdView$1;

.field final synthetic val$bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/ads/BannerAdView$1;Lcom/heyzap/common/banner/BannerWrapper;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->this$1:Lcom/heyzap/sdk/ads/BannerAdView$1;

    iput-object p2, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->val$bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->val$bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    invoke-interface {v0}, Lcom/heyzap/common/banner/BannerWrapper;->getRealBannerView()Landroid/view/View;

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->this$1:Lcom/heyzap/sdk/ads/BannerAdView$1;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/BannerAdView$1;->val$bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->removeAllViews()V

    .line 135
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->this$1:Lcom/heyzap/sdk/ads/BannerAdView$1;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/BannerAdView$1;->val$bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/BannerAdView;->addView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->this$1:Lcom/heyzap/sdk/ads/BannerAdView$1;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/BannerAdView$1;->val$bannerView:Lcom/heyzap/sdk/ads/BannerAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/heyzap/sdk/ads/BannerAdView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->this$1:Lcom/heyzap/sdk/ads/BannerAdView$1;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/BannerAdView$1;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->val$bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    invoke-static {v0, v1}, Lcom/heyzap/sdk/ads/BannerAdView;->access$102(Lcom/heyzap/sdk/ads/BannerAdView;Lcom/heyzap/common/banner/BannerWrapper;)Lcom/heyzap/common/banner/BannerWrapper;

    .line 140
    iget-object v0, p0, Lcom/heyzap/sdk/ads/BannerAdView$1$1;->this$1:Lcom/heyzap/sdk/ads/BannerAdView$1;

    iget-object v0, v0, Lcom/heyzap/sdk/ads/BannerAdView$1;->this$0:Lcom/heyzap/sdk/ads/BannerAdView;

    invoke-static {v0}, Lcom/heyzap/sdk/ads/BannerAdView;->access$200(Lcom/heyzap/sdk/ads/BannerAdView;)V

    goto :goto_0
.end method
