.class Lcom/heyzap/mediation/request/MediationRequest$3;
.super Ljava/lang/Object;
.source "MediationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/request/MediationRequest;->addStatusListener(Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/request/MediationRequest;

.field final synthetic val$statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest$3;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    iput-object p2, p0, Lcom/heyzap/mediation/request/MediationRequest$3;->val$statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$3;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-static {v0}, Lcom/heyzap/mediation/request/MediationRequest;->access$000(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->UNKNOWN_FAILURE:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    .line 145
    iget-boolean v0, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$3;->val$statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest$3;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onShow(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$3;->val$statusListener:Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;

    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest$3;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-virtual {v1}, Lcom/heyzap/mediation/request/MediationRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;->onFailedToShow(Ljava/lang/String;)V

    goto :goto_0
.end method
