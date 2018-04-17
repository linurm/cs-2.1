.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->fetchAndShowBanner(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

.field final synthetic val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

.field final synthetic val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;Lcom/heyzap/mediation/request/MediationRequest;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 226
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->realBannerView:Lcom/facebook/ads/AdView;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest;->getBannerOptions()Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getFacebookBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    new-instance v2, Lcom/facebook/ads/AdView;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    invoke-static {v3}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    iget-object v4, v4, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->bannerPlacementId:Ljava/lang/String;

    iget-object v5, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    invoke-static {v5}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$300(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/heyzap/internal/ContextReference;->getApp()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->access$400(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;Landroid/content/Context;)Lcom/facebook/ads/AdSize;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v2, v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->realBannerView:Lcom/facebook/ads/AdView;

    .line 229
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookBannerListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    .line 230
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->realBannerView:Lcom/facebook/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 231
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$3;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->realBannerView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->loadAd()V

    .line 234
    :cond_0
    return-void
.end method
