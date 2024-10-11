// app/javascript/packs/application.js

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/storage";
import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();
