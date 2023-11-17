<nav class="navbar navbar-expand-lg bg-secondary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">HL BLOG</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link {{( $active === "home") ? 'active' : ''}}" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{( $active === "about") ? 'active' : ''}}" aria-current="page" href="/about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{( $active === "posts") ? 'active' : ''}}" aria-current="page" href="/posts">Post</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{( $active === "categories") ? 'active' : ''}}" aria-current="page" href="/categories">Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="/categories">Dashboard</a>
        </li>
      </ul>
      <ul class="navbar-nav ms-auto">
      @auth
              <div class="container">
                
              </div>      
                  Welcome back, {{ auth()->user()->name }} 
                    <form action="/logout" method="post">
                      {{--  setiap form butuh @csrf --}}
                        @csrf
                      <button type="submit" class="dropdown-item">
                        <i class="bi bi-box-arrow-right"></i> Logout</button> 
                    </form>
        @else
        <li class="nav-item">
            <a href="/login" class="nav-link{{( $active === "login") ? 'active' : ''}}"><i class="bi bi-emoji-sunglasses"></i>
            Login</a>
        </li>
      </ul>
      @endauth
      
    </div>
  </div>
</nav>