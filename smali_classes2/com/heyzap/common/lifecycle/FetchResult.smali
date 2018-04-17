.class public Lcom/heyzap/common/lifecycle/FetchResult;
.super Ljava/lang/Object;
.source "FetchResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/common/lifecycle/FetchResult$FetchStartedListener;
    }
.end annotation


# static fields
.field public static NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

.field public static UNSUPPORTED_AD_UNIT:Lcom/heyzap/common/lifecycle/FetchResult;


# instance fields
.field public errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

.field public errorMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v1, Lcom/heyzap/internal/Constants$FetchFailureReason;->TIMEOUT:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v2, "Ad not ready"

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/lifecycle/FetchResult;->NOT_READY:Lcom/heyzap/common/lifecycle/FetchResult;

    .line 27
    new-instance v0, Lcom/heyzap/common/lifecycle/FetchResult;

    sget-object v1, Lcom/heyzap/internal/Constants$FetchFailureReason;->CONFIGURATION_ERROR:Lcom/heyzap/internal/Constants$FetchFailureReason;

    const-string v2, "Unsupported Ad Unit"

    invoke-direct {v0, v1, v2}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/lifecycle/FetchResult;->UNSUPPORTED_AD_UNIT:Lcom/heyzap/common/lifecycle/FetchResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/FetchResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 18
    iput-object p2, p0, Lcom/heyzap/common/lifecycle/FetchResult;->errorMessage:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/FetchResult;->success:Z

    .line 20
    return-void
.end method
