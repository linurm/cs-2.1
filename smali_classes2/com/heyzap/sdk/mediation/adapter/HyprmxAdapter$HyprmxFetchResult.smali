.class Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;
.super Lcom/heyzap/common/lifecycle/FetchResult;
.source "HyprmxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HyprmxFetchResult"
.end annotation


# instance fields
.field public final ad:Lcom/hyprmx/android/sdk/HyprMXPresentation;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/Constants$FetchFailureReason;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->errorCode:Lcom/heyzap/internal/Constants$FetchFailureReason;

    .line 271
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->errorMessage:Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->success:Z

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->ad:Lcom/hyprmx/android/sdk/HyprMXPresentation;

    .line 274
    return-void
.end method

.method public constructor <init>(Lcom/hyprmx/android/sdk/HyprMXPresentation;)V
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/FetchResult;-><init>()V

    .line 277
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->ad:Lcom/hyprmx/android/sdk/HyprMXPresentation;

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/heyzap/sdk/mediation/adapter/HyprmxAdapter$HyprmxFetchResult;->success:Z

    .line 279
    return-void
.end method
