.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;
.super Ljava/lang/Object;
.source "AdmobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->show(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/mediation/MediationResult;)Lcom/heyzap/common/lifecycle/AdDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field final synthetic val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

.field final synthetic val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;Lcom/heyzap/common/lifecycle/AdDisplay;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iput-object p3, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    invoke-static {}, Lcom/heyzap/common/lifecycle/EventStream;->create()Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    .line 229
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$display:Lcom/heyzap/common/lifecycle/AdDisplay;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/AdDisplay;->displayEventStream:Lcom/heyzap/common/lifecycle/EventStream;

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {v0, v1}, Lcom/heyzap/common/lifecycle/EventStream;->sendEvent(Ljava/lang/Object;)V

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->fetchListener:Lcom/heyzap/common/concurrency/SettableFuture;

    invoke-virtual {v0}, Lcom/heyzap/common/concurrency/SettableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$200(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    new-instance v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    invoke-direct {v2}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/FetchStateManager;->set(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;->access$500(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;)V

    .line 238
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$4;->val$localWrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobAdWrapper;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    goto :goto_0
.end method
