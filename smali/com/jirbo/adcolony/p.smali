.class Lcom/jirbo/adcolony/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/p$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x5

.field public static final b:I = 0xa

.field static c:Ljava/lang/String;

.field static volatile d:Lcom/jirbo/adcolony/p;

.field static volatile e:J


# instance fields
.field f:Ljava/lang/Runnable;

.field g:J

.field h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "MONITOR_MUTEX"

    sput-object v0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/p;->h:J

    .line 221
    return-void
.end method

.method static a()V
    .locals 4

    .prologue
    .line 31
    sget-object v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v1

    .line 33
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/jirbo/adcolony/p;->e:J

    .line 34
    sget-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "Creating ADC Monitor singleton."

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/jirbo/adcolony/p;

    invoke-direct {v0}, Lcom/jirbo/adcolony/p;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 38
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    :cond_0
    monitor-exit v1

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a(J)V
    .locals 1

    .prologue
    .line 214
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 45
    sget v0, Lcom/jirbo/adcolony/a;->n:I

    invoke-static {v0}, Lcom/jirbo/adcolony/a;->a(I)V

    .line 47
    sget-object v0, Lcom/jirbo/adcolony/l;->a:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC Monitor Started."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 48
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->b()V

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    :goto_0
    sget-object v3, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 57
    const/4 v3, 0x0

    sput-boolean v3, Lcom/jirbo/adcolony/a;->z:Z

    .line 58
    sget-boolean v3, Lcom/jirbo/adcolony/a;->z:Z

    if-eqz v3, :cond_8

    const-wide/16 v4, 0x32

    move-wide v6, v4

    .line 60
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 61
    sget-wide v4, Lcom/jirbo/adcolony/p;->e:J

    sub-long v4, v10, v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    long-to-int v3, v4

    .line 63
    iget-object v4, p0, Lcom/jirbo/adcolony/p;->f:Ljava/lang/Runnable;

    if-nez v4, :cond_0

    .line 65
    new-instance v4, Lcom/jirbo/adcolony/p$1;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/p$1;-><init>(Lcom/jirbo/adcolony/p;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/p;->f:Ljava/lang/Runnable;

    .line 75
    :cond_0
    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    :cond_1
    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    .line 80
    :cond_2
    sget-object v4, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v4, v4, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/jirbo/adcolony/p;->f:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 82
    if-eqz v2, :cond_12

    .line 84
    const/16 v4, 0xa

    if-lt v3, v4, :cond_a

    .line 178
    :cond_3
    sget-object v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    monitor-enter v1

    .line 180
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/p;

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    if-nez v2, :cond_4

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->c()V

    .line 185
    :cond_4
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    .line 188
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 189
    sget-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    if-eqz v0, :cond_5

    .line 191
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "ADC.finishing, controller on_stop"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 192
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->d()V

    .line 193
    invoke-static {}, Lcom/jirbo/adcolony/z;->a()V

    .line 195
    :cond_5
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 196
    sget-boolean v0, Lcom/jirbo/adcolony/a;->A:Z

    if-eqz v0, :cond_7

    .line 198
    sget-object v0, Lcom/jirbo/adcolony/l;->c:Lcom/jirbo/adcolony/l;

    const-string v1, "Releasing Activity reference"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 199
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_6

    .line 201
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->m:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 203
    :cond_6
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    .line 204
    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 207
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Exiting monitor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    :goto_2
    return-void

    .line 58
    :cond_8
    if-eqz v2, :cond_9

    const/16 v3, 0x7d0

    :goto_3
    int-to-long v4, v3

    move-wide v6, v4

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0xfa

    goto :goto_3

    .line 85
    :cond_a
    const/4 v4, 0x5

    if-ge v3, v4, :cond_13

    .line 87
    const/4 v2, 0x0

    .line 88
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/d;->b()V

    .line 89
    const-string v3, "AdColony is active."

    invoke-static {v3}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    move v4, v2

    .line 104
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v12, 0xbb8

    cmp-long v2, v2, v12

    if-lez v2, :cond_16

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    invoke-static {}, Lcom/jirbo/adcolony/q;->c()Z

    move-result v0

    if-nez v0, :cond_14

    .line 109
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 110
    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    .line 120
    :goto_5
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ag;->a()V

    .line 123
    :cond_c
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    if-eqz v0, :cond_d

    .line 125
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget v0, v0, Lcom/jirbo/adcolony/n$e;->k:I

    .line 127
    iget-wide v12, p0, Lcom/jirbo/adcolony/p;->h:J

    sub-long v12, v10, v12

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v0, v12, v0

    if-lez v0, :cond_d

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/p;->h:J

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    sget-object v1, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v1, v1, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    iget-object v1, v1, Lcom/jirbo/adcolony/t;->g:Lcom/jirbo/adcolony/ADCData$c;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/t;->a(Lcom/jirbo/adcolony/ADCData$c;)V

    .line 131
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->d:Lcom/jirbo/adcolony/t;

    new-instance v1, Lcom/jirbo/adcolony/ADCData$c;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$c;-><init>()V

    iput-object v1, v0, Lcom/jirbo/adcolony/t;->g:Lcom/jirbo/adcolony/ADCData$c;

    .line 136
    :cond_d
    invoke-virtual {p0, v6, v7}, Lcom/jirbo/adcolony/p;->a(J)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    sub-long v6, v0, v8

    const-wide/16 v12, 0xbb8

    cmp-long v5, v6, v12

    if-gtz v5, :cond_11

    sub-long v6, v0, v8

    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_11

    .line 141
    sget-object v5, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v5, v5, Lcom/jirbo/adcolony/d;->e:Lcom/jirbo/adcolony/u;

    iget-wide v6, v5, Lcom/jirbo/adcolony/u;->i:D

    sub-long/2addr v0, v8

    long-to-double v0, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v8

    add-double/2addr v0, v6

    iput-wide v0, v5, Lcom/jirbo/adcolony/u;->i:D

    .line 144
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/jirbo/adcolony/p;->g:J

    sub-long v0, v10, v0

    const-wide/16 v6, 0x3e8

    cmp-long v0, v0, v6

    if-lez v0, :cond_11

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/p;->g:J

    .line 150
    :try_start_1
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    iget-object v0, v0, Lcom/jirbo/adcolony/b;->i:Lcom/jirbo/adcolony/n$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$e;->o:Lcom/jirbo/adcolony/n$ag;

    iget-object v0, v0, Lcom/jirbo/adcolony/n$ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/n$ad;

    .line 154
    invoke-virtual {v0}, Lcom/jirbo/adcolony/n$ad;->a()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    sub-long/2addr v6, v8

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->p:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_10

    :cond_f
    iget-wide v6, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->q:J

    sub-long/2addr v6, v8

    iget-wide v8, v0, Lcom/jirbo/adcolony/n$ad;->o:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_e

    .line 156
    :cond_10
    sget-object v0, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    if-eqz v0, :cond_11

    .line 158
    sget-boolean v0, Lcom/jirbo/adcolony/a;->p:Z

    if-nez v0, :cond_11

    .line 160
    sget-object v0, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    iget-object v0, v0, Lcom/jirbo/adcolony/d;->b:Lcom/jirbo/adcolony/b;

    sget-object v1, Lcom/jirbo/adcolony/a;->P:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/b;->a(Landroid/app/Activity;)V

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->p:Z
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_11
    move-wide v0, v2

    move v2, v4

    .line 176
    goto/16 :goto_0

    .line 94
    :cond_12
    const/4 v4, 0x5

    if-lt v3, v4, :cond_13

    .line 96
    const-string v2, "AdColony is idle."

    invoke-static {v2}, Lcom/jirbo/adcolony/a;->b(Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x1

    .line 98
    sget-object v3, Lcom/jirbo/adcolony/a;->l:Lcom/jirbo/adcolony/d;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/d;->c()V

    :cond_13
    move v4, v2

    goto/16 :goto_4

    .line 114
    :cond_14
    sget-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    if-nez v0, :cond_15

    invoke-static {}, Lcom/jirbo/adcolony/a;->h()V

    .line 115
    :cond_15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/a;->L:Z

    goto/16 :goto_5

    .line 168
    :catch_0
    move-exception v0

    .line 170
    sget-object v0, Lcom/jirbo/adcolony/l;->d:Lcom/jirbo/adcolony/l;

    const-string v1, "Issue refreshing zones, disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/l;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/l;

    .line 171
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    goto/16 :goto_2

    .line 181
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_16
    move-wide v2, v0

    goto/16 :goto_5
.end method
