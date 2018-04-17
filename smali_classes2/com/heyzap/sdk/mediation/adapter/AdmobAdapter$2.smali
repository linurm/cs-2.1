.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->fetch()Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field final synthetic val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$000(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/internal/ContextReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heyzap/internal/ContextReference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    .line 164
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iput-object v0, v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 165
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$100(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;

    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iget-object v3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v4, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$2;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobInterstitialListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/mediation/abstr/NetworkAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 167
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 168
    const-string v2, "39A0D0AC94EE1E08823DA7384DA220C3"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 169
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 170
    return-void
.end method
