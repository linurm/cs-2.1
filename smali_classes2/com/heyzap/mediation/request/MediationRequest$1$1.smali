.class Lcom/heyzap/mediation/request/MediationRequest$1$1;
.super Ljava/lang/Object;
.source "MediationRequest.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$BannerError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/request/MediationRequest$1;->onEvent(Lcom/heyzap/common/lifecycle/DisplayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/request/MediationRequest$1;

.field final synthetic val$result:Lcom/heyzap/common/lifecycle/DisplayResult;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/request/MediationRequest$1;Lcom/heyzap/common/lifecycle/DisplayResult;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/heyzap/mediation/request/MediationRequest$1$1;->this$1:Lcom/heyzap/mediation/request/MediationRequest$1;

    iput-object p2, p0, Lcom/heyzap/mediation/request/MediationRequest$1$1;->val$result:Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/heyzap/internal/Constants$FetchFailureReason;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$1$1;->val$result:Lcom/heyzap/common/lifecycle/DisplayResult;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/heyzap/mediation/request/MediationRequest$1$1;->val$result:Lcom/heyzap/common/lifecycle/DisplayResult;

    iget-object v0, v0, Lcom/heyzap/common/lifecycle/DisplayResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
