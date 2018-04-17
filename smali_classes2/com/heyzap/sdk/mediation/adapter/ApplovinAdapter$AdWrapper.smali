.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;
.super Lcom/heyzap/common/lifecycle/AdDisplay;
.source "ApplovinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/heyzap/common/lifecycle/AdDisplay;-><init>()V

    .line 280
    return-void
.end method
