.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetchAndShowBanner(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field final synthetic val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

.field final synthetic val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/mediation/request/MediationRequest;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    new-instance v1, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-static {v2}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$600(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    .line 281
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->bannerAdUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$mediationRequest:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v0}, Lcom/heyzap/mediation/request/MediationRequest;->getBannerOptions()Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/sdk/ads/HeyzapAds$BannerOptions;->getAdmobBannerSize()Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$700(Lcom/heyzap/sdk/ads/HeyzapAds$CreativeSize;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 284
    new-instance v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-direct {v0, v1, v2, v3}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobBannerListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    .line 285
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 287
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$5;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->realBannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 291
    :cond_0
    return-void
.end method
