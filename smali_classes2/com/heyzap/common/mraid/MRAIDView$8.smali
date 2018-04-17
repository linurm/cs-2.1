.class Lcom/heyzap/common/mraid/MRAIDView$8;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/common/mraid/MRAIDView;->closeFromExpanded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/common/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lcom/heyzap/common/mraid/MRAIDView;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/heyzap/common/mraid/MRAIDView$8;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$8;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2500(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 888
    iget-object v0, p0, Lcom/heyzap/common/mraid/MRAIDView$8;->this$0:Lcom/heyzap/common/mraid/MRAIDView;

    invoke-static {v0}, Lcom/heyzap/common/mraid/MRAIDView;->access$2600(Lcom/heyzap/common/mraid/MRAIDView;)V

    .line 889
    return-void
.end method
