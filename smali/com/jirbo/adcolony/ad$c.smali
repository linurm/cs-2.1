.class Lcom/jirbo/adcolony/ad$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/ad;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ad;)V
    .locals 0

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1722
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad$c;->a()V

    .line 1723
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 1727
    if-nez p0, :cond_0

    .line 1729
    :goto_0
    return-void

    .line 1728
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad$c;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/jirbo/adcolony/ad$c;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1733
    if-nez p0, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_0

    .line 1739
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ad$c;->a()V

    .line 1741
    monitor-enter p0

    .line 1743
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->ai:Lcom/jirbo/adcolony/aa$b;

    if-eqz v0, :cond_3

    .line 1745
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->ai:Lcom/jirbo/adcolony/aa$b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/aa$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1747
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/ad;->ai:Lcom/jirbo/adcolony/aa$b;

    .line 1748
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jirbo/adcolony/ad;->t:I

    .line 1749
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 1750
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->n:Z

    .line 1751
    iget-object v0, p0, Lcom/jirbo/adcolony/ad$c;->a:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->g()V

    .line 1754
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
