.class Lcom/heyzap/mediation/request/MediationRequest$1;
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
        "Lcom/heyzap/common/lifecycle/DisplayResult;",
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
    .line 106
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest$1;->this$0:Lcom/heyzap/mediation/request/MediationRequest;

    iput-object p2, p0, Lcom/heyzap/mediation/request/MediationRequest$1;->val$bannerStatusListener:Lcom/heyzap/common/banner/BannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/heyzap/common/lifecycle/DisplayResult;)V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p1, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$1;->val$bannerStatusListener:Lcom/heyzap/common/banner/BannerListener;

    iget-object v1, p1, Lcom/heyzap/common/lifecycle/DisplayResult;->bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

    invoke-interface {v0, v1}, Lcom/heyzap/common/banner/BannerListener;->onAdLoaded(Lcom/heyzap/common/banner/BannerWrapper;)V

    .line 127
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$1;->val$bannerStatusListener:Lcom/heyzap/common/banner/BannerListener;

    new-instance v1, Lcom/heyzap/mediation/request/MediationRequest$1$1;

    invoke-direct {v1, p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$1$1;-><init>(Lcom/heyzap/mediation/request/MediationRequest$1;Lcom/heyzap/common/lifecycle/DisplayResult;)V

    invoke-interface {v0, v1}, Lcom/heyzap/common/banner/BannerListener;->onError(Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;)V

    goto :goto_0
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-virtual {p0, p1}, Lcom/heyzap/mediation/request/MediationRequest$1;->onEvent(Lcom/heyzap/common/lifecycle/DisplayResult;)V

    return-void
.end method
