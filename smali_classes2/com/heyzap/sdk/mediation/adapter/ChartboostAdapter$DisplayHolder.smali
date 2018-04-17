.class Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;
.super Lcom/heyzap/common/lifecycle/AdDisplay;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayHolder"
.end annotation


# instance fields
.field public final adUnit:Lcom/heyzap/internal/Constants$AdUnit;

.field public incentiveComplete:Z


# direct methods
.method private constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    .line 340
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$1;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ChartboostAdapter$DisplayHolder;-><init>(Lcom/heyzap/internal/Constants$AdUnit;)V

    return-void
.end method
