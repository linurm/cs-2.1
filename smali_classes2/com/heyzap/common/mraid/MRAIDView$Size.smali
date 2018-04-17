.class final Lcom/heyzap/common/mraid/MRAIDView$Size;
.super Ljava/lang/Object;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/common/mraid/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/heyzap/common/mraid/MRAIDView;

.field public width:I


# direct methods
.method private constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$Size;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;Lcom/heyzap/common/mraid/MRAIDView$1;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/heyzap/common/mraid/MRAIDView$Size;-><init>(Lcom/heyzap/common/mraid/MRAIDView;)V

    return-void
.end method
