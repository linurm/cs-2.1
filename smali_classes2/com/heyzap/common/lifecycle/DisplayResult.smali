.class public Lcom/heyzap/common/lifecycle/DisplayResult;
.super Ljava/lang/Object;
.source "DisplayResult.java"


# static fields
.field public static final NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

.field public static final SUCCESS:Lcom/heyzap/common/lifecycle/DisplayResult;

.field public static final UNKNOWN_FAILURE:Lcom/heyzap/common/lifecycle/DisplayResult;

.field public static final UNSUPPORTED_AD_UNIT:Lcom/heyzap/common/lifecycle/DisplayResult;


# instance fields
.field public bannerWrapper:Lcom/heyzap/common/banner/BannerWrapper;

.field public errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

.field public errorMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    invoke-direct {v0}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>()V

    sput-object v0, Lcom/heyzap/common/lifecycle/DisplayResult;->SUCCESS:Lcom/heyzap/common/lifecycle/DisplayResult;

    .line 13
    new-instance v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v1, "Ad not ready"

    invoke-direct {v0, v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/lifecycle/DisplayResult;->NOT_READY:Lcom/heyzap/common/lifecycle/DisplayResult;

    .line 14
    new-instance v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v1, "Unsupported Ad Unit"

    invoke-direct {v0, v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/lifecycle/DisplayResult;->UNSUPPORTED_AD_UNIT:Lcom/heyzap/common/lifecycle/DisplayResult;

    .line 15
    new-instance v0, Lcom/heyzap/common/lifecycle/DisplayResult;

    const-string v1, "Unknown Failure"

    invoke-direct {v0, v1}, Lcom/heyzap/common/lifecycle/DisplayResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/heyzap/common/lifecycle/DisplayResult;->UNKNOWN_FAILURE:Lcom/heyzap/common/lifecycle/DisplayResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    .line 29
    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    .line 18
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->errorMessage:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/heyzap/internal/Constants$FetchFailureReason;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    .line 23
    iput-object p1, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->errorMessage:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/common/lifecycle/DisplayResult;->success:Z

    .line 26
    return-void
.end method
