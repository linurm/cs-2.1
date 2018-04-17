.class Lcom/jirbo/adcolony/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/jirbo/adcolony/c;

.field b:Lcom/jirbo/adcolony/b;

.field c:Lcom/jirbo/adcolony/o;

.field d:Lcom/jirbo/adcolony/t;

.field e:Lcom/jirbo/adcolony/u;

.field f:Lcom/jirbo/adcolony/ADCStorage;

.field g:Lcom/jirbo/adcolony/ag;

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/j;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/j;",
            ">;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:Z

.field l:Z

.field m:Ljava/util/concurrent/ExecutorService;

.field n:Ljava/lang/Runnable;

.field o:Lcom/jirbo/adcolony/aa$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/jirbo/adcolony/c;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/c;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    .line 24
    new-instance v0, Lcom/jirbo/adcolony/b;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/b;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    .line 25
    new-instance v0, Lcom/jirbo/adcolony/o;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/o;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    .line 26
    new-instance v0, Lcom/jirbo/adcolony/t;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/t;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    .line 27
    new-instance v0, Lcom/jirbo/adcolony/u;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/u;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    .line 28
    new-instance v0, Lcom/jirbo/adcolony/ADCStorage;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCStorage;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->f:Lcom/jirbo/adcolony/ADCStorage;

    .line 29
    new-instance v0, Lcom/jirbo/adcolony/ag;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ag;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->g:Lcom/jirbo/adcolony/ag;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/jirbo/adcolony/aa$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/aa$a;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->o:Lcom/jirbo/adcolony/aa$a;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->f(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 282
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 99
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z

    .line 100
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 102
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/j;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/j;->a()V

    .line 102
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 112
    iput-boolean v2, p0, Lcom/jirbo/adcolony/d;->k:Z

    .line 113
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 115
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 108
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->k:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(DLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 7

    .prologue
    .line 191
    new-instance v0, Lcom/jirbo/adcolony/d$6;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/d$6;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/AdColonyAd;D)V

    .line 203
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 554
    invoke-static {p1}, Lcom/jirbo/adcolony/a;->a(I)V

    .line 555
    return-void
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jirbo/adcolony/c;->o:D

    .line 159
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Tracking ad event - start"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 162
    iget-object v0, p1, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->r:Lcom/jirbo/adcolony/af;

    iget v1, v0, Lcom/jirbo/adcolony/af;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/af;->d:I

    .line 164
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p1, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->m()V

    .line 168
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/d$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/jirbo/adcolony/d$5;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)V
    .locals 2

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V
    .locals 2

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 2

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyVideoAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/jirbo/adcolony/j;)V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->n:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/jirbo/adcolony/d$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/d$1;-><init>(Lcom/jirbo/adcolony/d;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->n:Ljava/lang/Runnable;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    monitor-exit v1

    .line 88
    :goto_0
    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/jirbo/adcolony/d;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 77
    :catch_0
    move-exception v0

    .line 80
    :try_start_3
    sget-object v2, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v3, "ExecutorService threw RejectedExecutionException. Disabling AdColony"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 81
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RejectedExecutionException from ADCController: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 82
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 83
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/d;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 84
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/jirbo/adcolony/d$8;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/jirbo/adcolony/d$8;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 6

    .prologue
    .line 264
    new-instance v0, Lcom/jirbo/adcolony/d$9;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/d$9;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 271
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/d;->a(I)V

    .line 499
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "==== Configuring AdColony "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v1, v1, Lcom/jirbo/adcolony/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    const-string v1, " with app/zone ids: ===="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 500
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    invoke-virtual {v0, p2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 501
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 503
    sget-object v1, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "package name: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/aa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 508
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p2, v0, Lcom/jirbo/adcolony/c;->k:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iput-object p3, v0, Lcom/jirbo/adcolony/c;->l:[Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/c;->a(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->o:Lcom/jirbo/adcolony/aa$a;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/aa$a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :goto_1
    monitor-exit p0

    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 515
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    .line 564
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 568
    const-wide/16 v0, 0x1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 572
    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ScheduledExecutorService did not terminate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 581
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 583
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method declared-synchronized a(ZLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 212
    monitor-enter p0

    if-nez p2, :cond_1

    .line 249
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_0
    invoke-virtual {p0, v2, v3, p2}, Lcom/jirbo/adcolony/d;->a(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 215
    if-nez p1, :cond_0

    .line 217
    invoke-virtual {p2}, Lcom/jirbo/adcolony/AdColonyAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->m()V

    .line 220
    iget-object v0, p2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget v2, v0, Lcom/jirbo/adcolony/n$ad;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jirbo/adcolony/n$ad;->s:I

    .line 221
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 223
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardAmount()I

    move-result v4

    .line 227
    iget-object v2, p2, Lcom/jirbo/adcolony/AdColonyAd;->i:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/n$ad;->b()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 229
    :cond_2
    if-eqz v1, :cond_0

    .line 231
    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->i:Lcom/jirbo/adcolony/n$ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ad;->n:Lcom/jirbo/adcolony/n$af;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/n$af;->e:Z

    if-eqz v0, :cond_3

    .line 233
    sget-boolean v0, Lcom/jirbo/adcolony/a;->o:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/jirbo/adcolony/d;->a(ZLjava/lang/String;I)V

    .line 236
    :cond_3
    new-instance v0, Lcom/jirbo/adcolony/d$7;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/d$7;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/a;->X:Lcom/jirbo/adcolony/a$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jirbo/adcolony/a$b;->a(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 344
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 345
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v1

    .line 347
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/n$ad;->b(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 351
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->g(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 295
    :goto_0
    monitor-exit p0

    return v0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    .line 123
    new-instance v0, Lcom/jirbo/adcolony/d$2;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/d$2;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;)V

    .line 130
    return-void
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    .locals 3

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->m:Lcom/jirbo/adcolony/n$ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    sget-object v0, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    const/4 v1, 0x3

    iput v1, v0, Lcom/jirbo/adcolony/AdColonyAd;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    const/4 v0, 0x0

    .line 490
    :goto_0
    monitor-exit p0

    return v0

    .line 471
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 472
    sget-boolean v0, Lcom/jirbo/adcolony/a;->m:Z

    if-eqz v0, :cond_2

    .line 474
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Launching AdColonyOverlay"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 475
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 490
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 483
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 484
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    invoke-static {}, Lcom/jirbo/adcolony/a;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 414
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 416
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->h:Ljava/lang/String;

    .line 418
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/d;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 429
    :goto_0
    monitor-exit p0

    return v0

    .line 420
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Showing ad for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 422
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 428
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyV4VCAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 447
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 448
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyV4VCAd;->h:Ljava/lang/String;

    .line 450
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/d;->f(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 460
    :goto_0
    monitor-exit p0

    return v0

    .line 452
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Showing v4vc for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 454
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    .line 455
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    .line 459
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/AdColonyVideoAd;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 391
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/a;->T:Lcom/jirbo/adcolony/AdColonyAd;

    .line 393
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyVideoAd;->h:Ljava/lang/String;

    .line 395
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/d;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 406
    :goto_0
    monitor-exit p0

    return v0

    .line 397
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v3, "Showing ad for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/l;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/l;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 399
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->a(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/d;->b(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 405
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 364
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 366
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/b;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v1, v1, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v1, v1, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;

    move-result-object v1

    .line 368
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/n$ad;->c(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 372
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/d;->j:Z

    .line 136
    new-instance v0, Lcom/jirbo/adcolony/d$3;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/d$3;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;)V

    .line 143
    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->h(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 308
    :goto_0
    monitor-exit p0

    return v0

    .line 305
    :catch_0
    move-exception v0

    .line 307
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    iget-object v0, v0, Lcom/jirbo/adcolony/c;->i:Lcom/jirbo/adcolony/ADCData$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$g;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 322
    :goto_0
    monitor-exit p0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 321
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/jirbo/adcolony/d$4;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/d$4;-><init>(Lcom/jirbo/adcolony/d;Lcom/jirbo/adcolony/d;)V

    .line 154
    return-void
.end method

.method declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 338
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->d()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 358
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/d;->b(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;
    .locals 1

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/n$ag;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/n$ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()V
    .locals 4

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/a;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/d;->a()V

    .line 527
    sget-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    if-nez v0, :cond_3

    .line 529
    invoke-static {}, Lcom/jirbo/adcolony/g;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->o:Lcom/jirbo/adcolony/aa$a;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/aa$a;->b()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/c;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/c;->a()V

    .line 532
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->x:Z

    .line 534
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->z:Z

    .line 537
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/b;->f()V

    .line 541
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->c:Lcom/jirbo/adcolony/o;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/o;->e()V

    .line 542
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/u;->b()V

    .line 543
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/t;->d()V

    .line 544
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->g:Lcom/jirbo/adcolony/ag;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ag;->d()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 548
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
