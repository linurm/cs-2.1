.class Lcom/heyzap/mediation/request/MediationRequest$2;
.super Ljava/lang/Object;
.source "MediationRequest.java"

# interfaces
.implements Lcom/heyzap/common/lifecycle/EventStream$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/request/MediationRequest;->addInternalBannerListener(Lcom/heyzap/common/banner/BannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/common/lifecycle/EventStream$EventListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/mediation/request/MediationRequest;

.field final synthetic val$bannerStatusListener:Lcom/heyzap/common/banner/BannerListener;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/request/MediationRequest;Lcom/heyzap/common/banner/BannerListener;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest$2;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    iput-object p2, p0, Lcom/heyzap/mediation/request/MediationRequest$2;->val$bannerStatusListener:Lcom/heyzap/common/banner/BannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$2;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    invoke-static {v0}, Lcom/heyzap/mediation/request/MediationRequest;->access$000(Lcom/heyzap/mediation/request/MediationRequest;)Lcom/heyzap/common/lifecycle/EventStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/common/lifecycle/EventStream;->getFirstEventFuture()Lcom/heyzap/common/concurrency/SettableFuture;

    move-result-object v0

    sget-object v1, Lcom/heyzap/common/lifecycle/DisplayResult;->UNKNOWN_FAILURE:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-static {v0, v1}, Lcom/heyzap/common/concurrency/FutureUtils;->getImmediatelyOrDefault(Lcom/heyzap/common/concurrency/SettableFuture;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    .line 135
    iget-object v1, p0, Lcom/heyzap/mediation/request/MediationRequest$2;->val$bannerStatusListener:Lcom/heyzap/common/banner/BannerListener;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    invoke-interface {v1, v0}, Lcom/heyzap/common/banner/BannerListener;->onAdClicked(Lcom/heyzap/common/banner/BannerWrapper;)V

    .line 136
    return-void
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$2;->onEvent(Ljava/lang/Boolean;)V

    return-void
.end method
