.class public final Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/vungle/publisher/display/view/VideoFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/display/view/VideoFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/vungle/publisher/display/view/VideoFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/AlertDialogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/image/BitmapFactory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/DisplayUtils;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/VideoFragment$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/PrivacyButton$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/ProgressBar$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/MuteButton$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/db/model/LoggedException$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/bt;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/util/ViewUtils;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/audio/VolumeChangeContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/device/AudioHelper;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/vungle/publisher/display/view/AdFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "com.vungle.publisher.display.view.VideoFragment"

    const-string v1, "members/com.vungle.publisher.display.view.VideoFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final attach(Ldagger/internal/Linker;)V
    .locals 6
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 52
    const-string v0, "com.vungle.publisher.display.view.AlertDialogFactory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.vungle.publisher.image.BitmapFactory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.vungle.publisher.display.view.DisplayUtils"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.vungle.publisher.event.EventBus"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 56
    const-string v0, "com.vungle.publisher.display.view.VideoFragment$Factory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 57
    const-string v0, "com.vungle.publisher.display.view.PrivacyButton$Factory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 58
    const-string v0, "com.vungle.publisher.display.view.ProgressBar$Factory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 59
    const-string v0, "com.vungle.publisher.display.view.MuteButton$Factory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 60
    const-string v0, "com.vungle.publisher.db.model.LoggedException$Factory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 61
    const-string v0, "com.vungle.publisher.bt"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->j:Ldagger/internal/Binding;

    .line 62
    const-string v0, "com.vungle.publisher.util.ViewUtils"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->k:Ldagger/internal/Binding;

    .line 63
    const-string v0, "com.vungle.publisher.audio.VolumeChangeContentObserver"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->l:Ldagger/internal/Binding;

    .line 64
    const-string v0, "com.vungle.publisher.display.view.VideoFragment$VideoEventListener$Factory"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->m:Ldagger/internal/Binding;

    .line 65
    const-string v0, "com.vungle.publisher.device.AudioHelper"

    const-class v1, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->n:Ldagger/internal/Binding;

    .line 66
    const-string v1, "members/com.vungle.publisher.display.view.AdFragment"

    const-class v2, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->o:Ldagger/internal/Binding;

    .line 67
    return-void
.end method

.method public final get()Lcom/vungle/publisher/display/view/VideoFragment;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/vungle/publisher/display/view/VideoFragment;

    invoke-direct {v0}, Lcom/vungle/publisher/display/view/VideoFragment;-><init>()V

    .line 99
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/display/view/VideoFragment;)V

    .line 100
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->get()Lcom/vungle/publisher/display/view/VideoFragment;

    move-result-object v0

    return-object v0
.end method

.method public final getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->m:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->n:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->o:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public final injectMembers(Lcom/vungle/publisher/display/view/VideoFragment;)V
    .locals 1
    .param p1, "object"    # Lcom/vungle/publisher/display/view/VideoFragment;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/AlertDialogFactory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->h:Lcom/vungle/publisher/display/view/AlertDialogFactory;

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/image/BitmapFactory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->i:Lcom/vungle/publisher/image/BitmapFactory;

    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/DisplayUtils;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->j:Lcom/vungle/publisher/display/view/DisplayUtils;

    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/event/EventBus;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->k:Lcom/vungle/publisher/event/EventBus;

    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->l:Lcom/vungle/publisher/display/view/VideoFragment$Factory;

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/PrivacyButton$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->m:Lcom/vungle/publisher/display/view/PrivacyButton$Factory;

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/ProgressBar$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->n:Lcom/vungle/publisher/display/view/ProgressBar$Factory;

    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/MuteButton$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->o:Lcom/vungle/publisher/display/view/MuteButton$Factory;

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LoggedException$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->p:Lcom/vungle/publisher/db/model/LoggedException$Factory;

    .line 118
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bt;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->q:Lcom/vungle/publisher/bt;

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->k:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/util/ViewUtils;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->r:Lcom/vungle/publisher/util/ViewUtils;

    .line 120
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->l:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->s:Lcom/vungle/publisher/audio/VolumeChangeContentObserver;

    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->m:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener$Factory;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->t:Lcom/vungle/publisher/display/view/VideoFragment$VideoEventListener$Factory;

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->n:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/device/AudioHelper;

    iput-object v0, p1, Lcom/vungle/publisher/display/view/VideoFragment;->u:Lcom/vungle/publisher/device/AudioHelper;

    .line 123
    iget-object v0, p0, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->o:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Lcom/vungle/publisher/display/view/VideoFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/display/view/VideoFragment$$InjectAdapter;->injectMembers(Lcom/vungle/publisher/display/view/VideoFragment;)V

    return-void
.end method
